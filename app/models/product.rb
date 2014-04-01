class Product

  include Mongoid::Document
  include Mongoid::Timestamps



  field :product_name,      type: String
  field :product_weight,    type: Integer
  field :product_calories,  type: Integer


  # validates :product_name, presence: true, uniqueness: {case_sensitive: false}
  validates :product_name, presence: true


end

