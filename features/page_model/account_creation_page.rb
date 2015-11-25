class AccountCreationPage < PageActions

  def navigate
   @browser.navigate.to "https://www.onelogin.com/trial"
  end

  element :first_name, id: "first-name"
  element :last_name, id: "last-name"
  element :email, id: "email"
  element :company_name, id: "company-name"
  element :number_of_employees, id: "company-size"
  element :phone_number, id: "phone"
  element :select_plan, xpath: "//span[text()='Free']"
  element :create_account, id: "submit-btn"
  element :user_password, id: "user_password"
  element :save_password, id: "set_password_quickstart"

  def generate_random_email
    random = (0...8).map { (65 + rand(26)).chr }.join
    "test_user-#{random}@onelogin.com"
  end

  def select_plan_from_dropdown plan_name
    select_plan.click
    @browser.find_element(xpath: "//li[text()='#{plan_name}']").click
  end

end