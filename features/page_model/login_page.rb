class LoginPage < PageActions

  def navigate
    @browser.navigate.to "https://app.onelogin.com/login"
  end

  element :login_field,    id: "user_email"
  element :password_field, id: "user_password"
  element :log_in_button,  id: "user_submit"
  element :error_message,  css: "div.error-message"
  element :admin, id: "mac-login-admin-nudge"
end