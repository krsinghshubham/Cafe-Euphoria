class MenusController < ApplicationController
  before_action :ensure_user_logged_in

  def index
    render "index"
  end

  def final
    Menu.menuReset
    render "final"
  end

  def update
    id = params[:id]
    selected_menu = Menu.find(id)
    var = selected_menu.quantity.to_i + 1
    selected_menu.quantity = var.to_s
    selected_menu.save!
    redirect_to menus_path
  end

  def destroy
    id = params[:id]
    selected_menu = Menu.find(id)
    if (selected_menu.quantity.to_i > 0)
      var = selected_menu.quantity.to_i - 1
      selected_menu.quantity = var.to_s
      selected_menu.save!
    end
    redirect_to menus_path
  end
end
