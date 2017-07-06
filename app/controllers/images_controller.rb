class ImagesController < ApplicationController
  def index
    @pictures = Image.all
    @current_user = current_user
    if @current_user
      @current_user_images_favorited = Image.get_favorited_images(@current_user.id)
    end
  end

  def new
    @current_user = current_user
    @image = @current_user.images.new
    render :new
  end

  def create
    @current_user = current_user
    @image = @current_user.images.new(image_params)
    if @image.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @image = Image.find(params[:id])
    render :show
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to root_path
  end

  private

    def image_params
      params.require(:image).permit(:title, :image, :user_id)
    end
end
