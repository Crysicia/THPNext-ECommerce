# frozen_string_literal: true

class ChargesController < ApplicationController
  def new
    # all_items = current_user.cart.items
    # @total_p = 0
    # all_items.map{ |item| @total_p+= item.price}
    @totalcartprice = current_user.carts.first.price unless current_user.carts.first.nil?
  end

  def create
    # Amount in cents
    @totalcartprice = current_user.carts.first.price unless current_user.carts.first.nil?
    @amount = (@totalcartprice * 100).to_i

    customer = Stripe::Customer.create(
      email: params[:stripeEmail],
      source: params[:stripeToken]
    )

    _charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Order payement',
      currency: 'eur'
    )

    @order = Order.create!(status: "payed", total_price: current_user.carts.first.price, user_id: current_user.id)

    current_user.carts.each do |cart|
      item = ItemOrder.new(item_id: cart.item_id, quantity: cart.quantity, order_id: @order.id)
      item.save!
    end

    current_user.carts.destroy_all
    # et quantity dans order

    redirect_to orders_path
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end
