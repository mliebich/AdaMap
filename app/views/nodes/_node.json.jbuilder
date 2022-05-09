json.extract! node, :id, :title, :description, :image_url, :status, :level, :created_at, :updated_at
json.url node_url(node, format: :json)
