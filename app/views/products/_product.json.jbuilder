json.extract! product, :id, :summary, :description, :created_at, :updated_at
json.url product_url(product, format: :json)
