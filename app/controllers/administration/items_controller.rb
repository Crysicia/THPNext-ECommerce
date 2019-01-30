# frozen_string_literal: true

module Administration
  class ItemsController < ApplicationController
    # bindin.pry

    def index
      @items = Item.all
    end

    def show
      @item = Item.find(params[:id])
    end

    def new
      @item = Item.new
    end

    def edit
      @item = Item.find(params[:id])
    end

    def create
      @item = Item.new(item_params)

      if item.save
        flash[:notice] = "Item was successfully created!"
        redirect_to items_path
      else
        render 'new'
      end
    end

    def update
      @item = Item.find(params[:id])

      if item.update
        flash[:notice] = "Item was successfully updated!"
        redirect_to items_path
      else
        render 'edit'
      end
    end

    def destroy
      @item = @item.find(params[:id])
      @item.destroy
      redirect_to item_path
    end

    private

    def item_params
      params.require(:item).permit(:price)
    end
  end
end
