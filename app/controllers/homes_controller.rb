class HomesController < ApplicationController
  allow_unauthenticated_access only: %i[ show ]
  def show
    @github = GithubApi.new.index_pr
    @gitlab =  Gitlab.user_merge_requests(author: Gitlab.user.username, state: "merged")

    @social_channels = SocialChannel.all
    @contributions = Contribution.all
  end
end
