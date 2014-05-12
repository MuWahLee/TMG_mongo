class GearController < ApplicationController
  before_action :is_authenticated?

  def edit
    @products = Product.all.entries
    @product_ids = current_user.carry_items.map do |ci|
      ci.product.id
    end
    puts @product_ids.inspect
  end

  def update
    carry_items = params[:user][:product_ids].map do |pid|
      product = Product.find(pid)
      CarryItem.new( product: product ) if product
    end

    if current_user.update_attributes( carry_items: carry_items )
      redirect_to gear_form_url, notice: "Your list has been updated"
    else
      flash.now[:alert] = "Sorry. Can't update your list"
      @products = Product.all.entries
      @product_ids = current_user.carry_items.map do |ci|
        ci.product.id
      end
      render :edit
    end
  end
end