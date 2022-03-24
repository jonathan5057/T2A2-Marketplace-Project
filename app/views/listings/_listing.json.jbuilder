json.extract! listing, :id, :category, :title, :quantity, :price, :user_id, :created_at, :updated_at
json.url listing_url(listing, format: :json)
