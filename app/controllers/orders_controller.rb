# frozen_string_literal: true

class OrdersController < ApplicationController
  before_action :authenticate_user!

  def show
    # Cart.price(current_user)

    UserMailer.offer.deliver_later
  end
end
