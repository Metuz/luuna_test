module PagesHelper
  def links_helper
    if current_user.admin? || current_user.staff?
      (link_to 'Users', users_path) + (link_to 'Address', addresses_path)
    else
      link_to 'Address', addresses_path
    end
  end
end
