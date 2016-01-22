json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :vin, :mileage, :year, :make, :model, :customer_id
  json.url vehicle_url(vehicle, format: :json)
end
