class Admin::ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_item_path(@item), notice: "投稿が成功しました"
    else
      render :new
    end
  end

  def index
    @items = Item.page(params[:page])
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_params)
      redirect_to admin_item_path(@item), notice: "編集が成功しました"
    else
      render :edit
    end
  end

  private

  def item_params
    params.require(:item).permit(:image, :name, :explanation, :genre_id, :tax_excluded_price, :is_sold)
  end
end
