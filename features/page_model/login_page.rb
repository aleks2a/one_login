class LoginPage < PageActions

  def navigate
    @browser.navigate.to "https://app.onelogin.com/login"
  end
  element :login_field,  id: "user_email"
  element :password_field, id: "user_password"
  element :login_button, id: "user_submit"
  element :admin_logo, id: "mac-login-admin-nudge"
  element :error_message, css: "div.error-message"
end