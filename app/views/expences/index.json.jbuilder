json.array!(@expences) do |expence|
  json.extract! expence, :id, :name, :price, :create_at
  json.url expence_url(expence, format: :json)
end
