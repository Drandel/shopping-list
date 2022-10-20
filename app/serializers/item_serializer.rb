class ItemSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :notes, :quantity, :store_id
end
