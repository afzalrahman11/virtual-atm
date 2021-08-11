class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  helper_method :require_admin

  def require_admin
    if !(user_signed_in? && current_user.admin?)
      flash[:alert] = "Only admins can perform that action"
      redirect_to root_path
    end
end

end
