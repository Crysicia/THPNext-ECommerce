# frozen_string_literal: true

module Administration
  class OrdersController < AdministrationController
    def index
      @orders = Order.all
    end

    def show
      @order = Order.find(params[:id])
    end

    def update
      @order = Order.find(params[:id])

      @order.update(status: "Confirmée")
      redirect_to administration_orders_path
    end
  end
end
