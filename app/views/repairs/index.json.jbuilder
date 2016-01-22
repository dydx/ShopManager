json.array!(@repairs) do |repair|
  json.extract! repair, :id, :description, :time, :work_order_id
  json.url repair_url(repair, format: :json)
end
