class GithubApi
  require "octokit"

  def initialize
    @client = Octokit::Client.new(access_token: ENV["GITHUB_TOKEN"])
    @client.auto_paginate = true
  end

  def index_pr
    query = %w[type:pr author:chrisfdev00 -repo:chrisfdev00/erudite_actual -repo:chrisfdev00/Obsidian -repo:chrisfdev00/Erudite -repo:chrisfdev00/work_rota].join(" ")

    result = @client.search_issues(query)
    result.items.map do |pr|
      {
        title: pr.title,
        url: pr.html_url,
        repo: pr.repository_url,
        created_at: pr.created_at
      }
    end
  rescue Octokit::Unauthorized
    Rails.logger.error("GitHub API: Unauthorized - Invalid or missing GITHUB_TOKEN")
    []
  rescue Octokit::Error => e
    Rails.logger.error("GitHub API error: #{e.message}")
    []
  end
end
