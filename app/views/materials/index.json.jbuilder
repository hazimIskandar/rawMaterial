json.array!(@materials) do |material|
  json.extract! material, :id, :name, :unit, :minimum_stock, :average_price, :current_stock
  json.url material_url(material, format: :json)
end
