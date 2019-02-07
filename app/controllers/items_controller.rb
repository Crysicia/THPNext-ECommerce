# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
    @stock_state = @item.stock >= 0 ? "Rupture de stock" : "En stock"
  end
end
