class OneLogin < PageActions

  def account_creation_page
    @account_creation_page ||= AccountCreationPage.new @browser
  end

  def login_page
    @login_page ||= LoginPage.new @browser
  end

end