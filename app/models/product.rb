class Product

  include Mongoid::Document
  include Mongoid::Timestamps
  embedded_in :user


  field :product_name,      type: String
  field :product_weight,    type: Integer
  field :product_calories,  type: Integer

  # validates :product_name, presence: true: {case_sensitive: false}

  def self.product_create(product_name, product_weight, product_calories)
    db.product.insert( { product_name: blank, product_weight: blank, product_calories: blank} )
    self.save
  end

end

