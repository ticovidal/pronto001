json.extract! project, :id, :name, :description, :end, :category_id, :industry_id, :visibility, :mincost, :maxcost, :created_at, :updated_at
json.url project_url(project, format: :json)
