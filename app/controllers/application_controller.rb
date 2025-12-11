class ApplicationController < ActionController::Base
    before_action :require_login
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  # allow_browser versions: :modern
  private
    def current_user
      @current_user ||= User.find_by(id: session[:current_user_id]) if
        session[:current_user_id]
    end
    def require_login
      unless logged_in?
        flash[:error] = "You must be logged in to access this section"
        redirect_to new_login_url # halts request cycle
      end
    end
end
