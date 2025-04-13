json.extract! contribution, :id, :name, :repository, :details, :created_at, :updated_at
json.url contribution_url(contribution, format: :json)
