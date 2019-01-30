# frozen_string_literal: true

class ItemsController < ApplicationController
  # binding.pry
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end
end
