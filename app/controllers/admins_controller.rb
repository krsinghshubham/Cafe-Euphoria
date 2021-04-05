class AdminsController < ApplicationController
  before_action :ensure_user_logged_in

  def index
    render "index"
  end

  def menusEdit
    render "menu"
  end

  def create
    category = params[:category]
    name = params[:name]
    price = params[:price]
    new_menu = Menu.new(
      category: category,
      name: name,
      price: price
    )
    if new_menu.save
      redirect_to menusEdit_path
    else
      flash[:error] = new_todo.errors.full_message.join(", ")
      redirect_to menusEdit_path
    end
  end

  def destroy
    id = params[:id]
    selected_menu=Menu.find(id)
    selected_menu.destroy
    redirect_to menusEdit_path
  end

end
