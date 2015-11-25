class LoginPage < PageActions

  def navigate
    @browser.navigate.to "https://app.onelogin.com/login"
  end

  element :login_field,    id: "user_email"
  element :password_field, id: "user_password"
  element :log_in_button,  id: "user_submit"


end