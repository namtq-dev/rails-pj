json.extract! product_review, :id, :user_id, :product_id, :review, :created_at, :updated_at
json.url product_review_url(product_review, format: :json)
