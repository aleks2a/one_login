class AccountCreationPage < PageActions

  def navigate
    @browser.navigate.to "https://www.onelogin.com/trial"
  end

  element :first_name,     id: "first-name"
  element :last_name,      id: "last-name"
  element :email,          id: "email"
  element :company_name,   id: "company-name"
  element :company_size,   id: "company-size"
  element :phone_number,   id: "phone"
  element :select_plan,    xpath: "//span[text()='Free']"
  element :create_account, id: "submit-btn"
  element :user_password,  id: "user_password"
  element :save_password,  id: "set_password_quickstart"
  element :footer,         id: "footer-bottom"
  element :setup_wizard,   xpath: "//li[@class='sidebar']/h3"


  def generate_random_email
    random_name = (0...8).map {(65 + rand(26)).chr }.join
    "test_user_#{random_name}@onelogin.com"
  end

  def select_plan_from_dropdown plan_name
    footer.location_once_scrolled_into_view
    phone_number.location_once_scrolled_into_view
    select_plan.click
    @browser.find_element(:xpath, "//li[text()='#{plan_name}']").click
  end

end