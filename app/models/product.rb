class Product

  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :user


  field :product_name,      type: String
  field :product_weight,    type: Integer
  field :product_calories,  type: Integer


  # validates :product_name, presence: true, uniqueness: {case_sensitive: false}
  validates_length_of :product_name, minimum: 1

  def self.product_create(product_name, product_weight, product_calories)
    db.product.insert( { product_name: blank, product_weight: blank, product_calories: blank} )
      self.save
  end

end

