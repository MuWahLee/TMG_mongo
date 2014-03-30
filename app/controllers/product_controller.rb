class ProductController < ApplicationController

  before_action :is_authenticated?
  before_action :get_product, except: [:product_read, :product_new, :product_create]

  def product_new
    # this is our form
    render :product_new
  end

  def product_create
    # make it save here
    @product = Product.new ( product_params )

    if @product.save
      redirect_to gear_form_url ( @product )
    else
      flash.now[:alert] = @product.errors
      render :product_new
    end
  end


  def product_index
    @products = Product.all.entries
  end

  def product_show
  end

  def product_edit
  end

  def product_update
    if @product.update_attributes ( product_params )
      redirect_to product_url( @product )
    else
      flash.now[:alert] = @product.errors
      render :product_edit
    end
  end

  def product_destroy
    @product.destroy
    redirect_to product_url, notice: "Deleted #{@product.name}."
  end


  private

  def get_product
    @product = Product.find_by ( params[:id] )
  end

  def product_params
    params.require(:product).permit(:product_name, :product_weight, :product_calories)
  end

end

