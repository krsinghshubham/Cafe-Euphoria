class UsersController < ApplicationController
  skip_before_action :ensure_user_logged_in

  def new
    render "users/new"
  end

  def create
    @new_user = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      password: params[:password],
    )
    if @new_user.valid?
      if @new_user.save
        session[:current_user_id] = @new_user.id
        redirect_to "/"
      else
        flash[:error] = "The details filled are Invalid, Please Try Again"
        redirect_to new_user_path
      end
    else
      flash[:error] = "No special characters are allowed, Please Try Again"
      redirect_to new_user_path
    end
  end
end
