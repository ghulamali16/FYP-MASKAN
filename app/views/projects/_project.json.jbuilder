json.extract! project, :id, :title, :city, :budget, :status, :client, :created_at, :updated_at
json.url project_url(project, format: :json)
