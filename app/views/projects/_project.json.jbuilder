json.extract! project, :id, :name, :description, :board_id, :user_id, :created_at, :updated_at
json.url project_url(project, format: :json)
