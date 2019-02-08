# frozen_string_literal: true

class ChargesController < ApplicationController
  def new
    # all_items = current_user.cart.items
    # @total_p = 0
    # all_items.map{ |item| @total_p+= item.price}
    @totalcartprice = current_user.carts.first.price unless current_user.carts.first.nil?
  end

  def create
    current_user.carts.each do |cart|
      next if cart.quantity <= cart.item.quantity

      flash[:error] = "Certains produits ne sont plus en stock"
      redirect_to cart_path(id: current_user.id)
      break
    end

    @totalcartprice = current_user.carts.first.price unless current_user.carts.first.nil?
    @amount = (@totalcartprice * 100).to_i

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    _charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Order payment',
      currency: 'eur'
    )

    current_user.carts.each do |cart|
      new_quantity = cart.item.quantity - cart.quantity
      item = Item.find(cart.item.id)
      item.update(quantity: new_quantity)
    end

    @order = Order.create!(status: "payed", total_price: current_user.carts.first.price, user_id: current_user.id)

    current_user.carts.each do |cart|
      item = ItemOrder.new(item_id: cart.item_id, quantity: cart.quantity, order_id: @order.id)
      item.save!
    end

    current_user.carts.destroy_all
    # et quantity dans order

    redirect_to orders_path
    nil
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
