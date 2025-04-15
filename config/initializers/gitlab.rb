Gitlab.configure do |config|
  config.endpoint = "https://gitlab.com/api/v4"
  config.private_token  = ENV["GITLAB_TOKEN"]
end
