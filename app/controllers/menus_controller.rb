class MenusController < ApplicationController
  before_action :ensure_user_logged_in

  def index
    render "index"
  end

  def final
    Order.create(current_user.id)
    Menu.menuReset
    render "final"
  end

  def update
    id = params[:id]
    selected_menu = Menu.find(id)
    var = selected_menu.quantity::int + 1
    selected_menu.quantity = var
    selected_menu.save!
    redirect_to menus_path
  end

  def destroy
    id = params[:id]
    selected_menu = Menu.find(id)
    if (selected_menu.quantity::int > 0)
      var = selected_menu.quantity - 1
      selected_menu.quantity = var
      selected_menu.save!
    end
    redirect_to menus_path
  end
end
