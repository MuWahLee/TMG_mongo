class ProductController < ApplicationController

  def product_new
    # this is our form
  end

  def product_create
    # make it save here
    Product.create product_params
    redirect_to product_url
  end


  def product_read
    @products = Product.all.entries
  end

  def product_update
  end

  def product_delete
  end


def product_params
  params.require(:product).permit(:product_name, :product_weight, :product_calories)
end

end
