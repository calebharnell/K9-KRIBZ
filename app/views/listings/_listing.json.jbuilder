json.extract! listing, :id, :user_id, :start, :end, :price, :details, :created_at, :updated_at
json.url listing_url(listing, format: :json)
