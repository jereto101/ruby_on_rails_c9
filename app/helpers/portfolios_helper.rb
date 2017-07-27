module PortfoliosHelper
  def portfolio_login_helper style = ''
    if current_user.is_a?(GuestUser)
      (link_to "Register ", new_user_registration_path, class: style) +
      "<br>".html_safe +
      (link_to "Login", new_user_session_path , class: style)
    else
      (link_to "Edit Profile ", edit_user_registration_path, class: style)+
      "<br>".html_safe +
      (link_to "Logout", destroy_user_session_path, method: :delete, class: style)
    end 
  end
  
  def image_generator(height:, width:)
    "http://placehold.it/#{height}x#{width}"
  end

  def portfolio_img img, type
    if img.model.main_image? || img.model.thumb_image?
      img
    elsif type == 'thumb'
      image_generator(height: '350', width: '200')
    elsif type == 'main'
      image_generator(height: '600', width: '400')
    end
  end
end