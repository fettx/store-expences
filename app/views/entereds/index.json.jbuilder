json.array!(@entereds) do |entered|
  json.extract! entered, :id, :name, :price, :create_at
  json.url entered_url(entered, format: :json)
end
