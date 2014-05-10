class Product

  include Mongoid::Document
  include Mongoid::Timestamps

  mount_uploader :product_image, ImageUploader



  field :product_name,      type: String
  field :product_category,  type: String
  field :product_weight,    type: Integer
  field :product_calories,  type: Integer
  field :product_image,     type: String



  # validates :product_name, presence: true, uniqueness: {case_sensitive: false}
  validates :product_name, presence: true


end

