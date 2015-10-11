json.array!(@items) do |item|
  json.extract! item, :id, :name, :price, :image, :description, :asin
  json.url item_url(item, format: :json)
end
