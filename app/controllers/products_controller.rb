class ProductsController < ApplicationController

  before_action :is_authenticated?
  before_action :get_product, except: [ :index, :new, :create ]

  def new
    # this is our form
    @product = Product.new
  end

  def create
    # make it save here
    @product = Product.new ( product_params )

    if @product.save
      redirect_to gear_form_url ( @product )
    else
      flash.now[:alert] = @product.errors
      render :product_new
    end
  end


  def index
    @products = Product.all.entries
  end

  def show
    # @product = Product.find(params[:id])
  end

  def edit
  end

  def update
    if
      @product.update_attributes ( product_params )
      redirect_to products_url( @product )
    else
      flash.now[:alert] = @product.errors
      render :product_edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_url, notice: "Deleted #{@product.product_name}."
  end


  private

  def get_product
    @product = Product.find( params[:id] )
  end

  def product_params
    params.require(:product).permit(:product_name, :product_weight, :product_calories)
  end

end

