json.extract! project, :id, :name, :description, :task, :star_date, :end_date, :url, :created_at, :updated_at
json.url project_url(project, format: :json)
