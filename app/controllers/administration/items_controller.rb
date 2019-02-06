# frozen_string_literal: true

module Administration
  class ItemsController < AdministrationController
    before_action :find_item, only: %i[show edit update]

    def index
      @items = Item.all
    end

    def show
      @item = Item.find(params[:id])
    end

    def new
      @item = Item.new
    end

    def create
      #@item = Item.new(item_params)
      Item.create(item_params)
      flash[:notice] = "Item was successfully created!"
      redirect_to administration_items_path
    end
    
    def edit
      @item = Item.find(params[:id])
    end

    def update
      @item = Item.find(params[:id])

      @item.update(item_params)
      flash[:notice] = "Item was successfully updated!"
      redirect_to administration_items_path
    end

    def destroy
      @item = Item.find(params[:id])
      @item.destroy
      redirect_to administration_item_path
    end

    private

    def item_params
      params.require(:item).permit(:name, :description, :original_price, :photo)
    end

    def find_item
      @item = Item.find(params[:id])
    end
  end
end
