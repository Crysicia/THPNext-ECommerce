# frozen_string_literal: true

class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart

  def show
    @totalcartprice = current_user.carts.first.price unless current_user.carts.first.nil?
  end

  def update
    item = params[:item].to_i
    quantity = params[:quantity].to_i

    new_cart_item = @cart.find_or_create_by(item_id: item)

    puts '//////////////////'
    puts new_cart_item.inspect
    puts '////////////////////////////'

    if params[:type].casecmp("increment").zero?

      if (new_cart_item.quantity.to_i + quantity) < new_cart_item.item.quantity
        new_cart_item.increment(:quantity, quantity).save
      else
        flash[:error] = "impossible d'ajouter au panier"
      end

    else
      new_cart_item.decrement(:quantity, quantity)
      new_cart_item.quantity = 1 if new_cart_item.quantity < 1
      new_cart_item.save
    end

    redirect_to cart_path
  end

  def destroy
    item = params[:item].to_i
    @cart.where(item_id: item).destroy_all

    redirect_to cart_path
  end

  private

  def set_cart
    @cart = current_user.carts
    @cart_items = current_user.items
  end
end
