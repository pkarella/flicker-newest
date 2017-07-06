class FavoritesController < ApplicationController
  def new
    @favorite = Favorite.new
    render :new
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @favorite.save
  end

  private

  def favorite_params
    params.permit(:favorite, :user_id, :image_id)
  end
end
