json.extract! product, :id, :name, :detail, :price, :inside, :outside, :smart, :clothes, :functional, :created_at, :updated_at
json.url product_url(product, format: :json)
