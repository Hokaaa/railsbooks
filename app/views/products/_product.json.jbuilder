json.extract! product, :id, :product_id, :description, :price, :image_url, :category, :created_at, :updated_at
json.url product_url(product, format: :json)
