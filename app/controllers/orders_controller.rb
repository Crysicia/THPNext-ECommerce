# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_params

  def index
    # fetch current user cart (all items)

    current_user.carts

    # put them
  end

  def show
    UserMailer.offer.deliver_later
  end

  def create
    # @order = Order.new(status: "truc", total_price:)
  end

  def set_params
    # params.require(:item).permit(:content)
  end
end
