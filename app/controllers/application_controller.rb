class ApplicationController < ActionController::Base
  def signed_in_only!
    # current_user in ApplicationController must be defined as helper method to make it work
    redirect_to new_user_session_path unless current_user
  end
end
