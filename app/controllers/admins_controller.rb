class AdminsController < ApplicationController
  before_action :ensure_user_logged_in

  def index
    render "index"
  end

  def menusEdit
    render "menu"
  end

end
