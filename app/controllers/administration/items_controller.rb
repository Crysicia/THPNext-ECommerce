# frozen_string_literal: true

module Administration
  class ItemsController < AdministrationController
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
      @item = Item.new(item_params)
      if @item.save
        flash[:notice] = "L'article a été créé"
        redirect_to administration_items_path
      else
        redirect_to administration_items_path
        flash[:notice] = "Il y a eu problème, veuillez vérifier les champs"
      end
    end

    def edit
      @item = Item.find(params[:id])
    end

    def update
      @item = Item.find(params[:id])

      if @item.update(item_params)
        flash[:notice] = "L'article a bien été modifié"
        redirect_to administration_items_path
      else
        redirect_to administration_items_path
        flash[:notice] = "Il y a eu problème, veuillez vérifier les champs"
      end
    end

    def destroy
      @item = Item.find(params[:id])
      if @item.destroy
        redirect_to administration_items_path
        flash[:notice] = "L'article a bien été supprimé"
      end
    end

    private

    def item_params
      params.require(:item).permit(:name, :description, :original_price, :photo)
    end
  end
end
