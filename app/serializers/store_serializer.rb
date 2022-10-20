class StoreSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :slug

  has_many :items
end
