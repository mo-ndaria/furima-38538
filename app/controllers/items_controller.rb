class ItemsController < ApplicationController

  def index
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :text :category_id, :status_id, :freight_id, :prefecture_id, :ship_date_id, :price).merge(user_id: current_user.id)
  end
end
