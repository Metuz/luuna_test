module ApplicationHelper
  def login_helper
    if user_signed_in?
      link_to 'Logout', destroy_user_session_path, method: :delete
    end
  end

  def links_helper
    if user_signed_in?
      if current_user.admin? || current_user.staff?
        (link_to 'Users', users_path) + ' ' + (link_to 'Address', addresses_path)
      else
        link_to 'Address', addresses_path
      end
    end
  end

  def show_link(object, content = 'Show')
    link_to(content, object) if can?(:read, object)
  end

  def edit_link(object, content = 'Edit')
    link_to(content, [:edit, object]) if can?(:update, object)
  end

  def destroy_link(object, content = 'Destroy')
    link_to(content, object, method: :delete, confirm: 'Are you sure?') if can?(:destroy, object)
  end

  def create_link(object, content = 'New')
    if can?(:create, object)
      object_class = (object.kind_of?(Class) ? object : object.class)
      link_to(content, [:new, object_class.name.underscore.to_sym])
    end
  end
end
