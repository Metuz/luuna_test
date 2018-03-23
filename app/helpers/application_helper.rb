module ApplicationHelper
  def login_helper
    if user_signed_in?
      link_to 'Logout', destroy_user_session_path, method: :delete
    end
  end
end
