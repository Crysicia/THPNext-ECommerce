# frozen_string_literal: true

class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart

  def show; end

  def update
    item = params[:item].to_i
    quantity = params[:quantity].to_i

    if params[:type].downcase == "increment"
      @cart.find_or_create_by(item: item).increment(:quantity, quantity).save
    else
      @cart.find_or_create_by(item: item).decrement(:quantity, quantity).save
    end
  end

  def destroy
    item = params[:item].to_i
    @cart.where(item: item).destroy_all
  end

  private

  def set_cart
    @cart = current_user.carts
    @cart_items = current_user.items
  end
end
