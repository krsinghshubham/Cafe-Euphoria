class MenusController < ApplicationController
  before_action :ensure_user_logged_in

  def index
    @menu = current_user.menus
    render "index"
  end

  def update
  end

  def destroy
   
  end
end
