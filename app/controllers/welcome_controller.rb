class WelcomeController < ApplicationController
  def index
    @current_user = current_user
    if current_user
      @current_user_pictures = @current_user.images
    end
  end
end
