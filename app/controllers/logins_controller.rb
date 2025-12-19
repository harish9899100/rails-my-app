class LoginsController < ApplicationController
  skip_before_action :require_login, only: [ :new, :create ]

  def new
  end

  def create
    if user = User.authenticate_by(email: params[:email], password: params[:password])
      session[:current_user_id] = user.id
      redirect_to root_path
    else
      flash[:alert] = "Invalid email or password"
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    session.delete(:current_user_id)
    @current_user = nil
    redirect_to root_path, status: :see_other
  end
end
