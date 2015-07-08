json.array!(@stores) do |store|
  json.extract! store, :id, :name, :address_1, :city, :state, :zip, :country, :latitude, :longitude
  json.url store_url(store, format: :json)
end
