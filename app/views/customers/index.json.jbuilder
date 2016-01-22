json.array!(@customers) do |customer|
  json.extract! customer, :id, :first_name, :last_name, :address, :city, :state, :zip, :phone, :email
  json.url customer_url(customer, format: :json)
end
