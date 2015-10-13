json.array!(@donation_centers) do |donation_center|
  json.extract! donation_center, :id, :name, :address, :zip, :phone_number, :website, :district
  json.url donation_center_url(donation_center, format: :json)
end
