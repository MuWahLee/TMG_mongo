class CarryItem
  include Mongoid::Document
  include Mongoid::Timestamps

  before_validation :copy_product_data, unless: :persisted?

  mount_uploader :product_image, ImageUploader

  embedded_in :user
  belongs_to :product

  field :product_name,      type: String
  field :product_category,  type: String
  field :product_weight,    type: Integer
  field :product_calories,  type: Integer
  field :product_image,     type: String



  # validates :product_name, presence: true, uniqueness: {case_sensitive: false}
  validates :product_name, presence: true

  def copy_product_data
    self.product_name = self.product.product_name
    self.product_category = self.product.product_category
    self.product_weight = self.product.product_weight
    self.product_calories = self.product.product_calories
    self.product_image = self.product.product_image
  end
end

