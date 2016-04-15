class LoginPage < PageActions

  def navigate
    @browser.navigate.to "https://www.facebook.com/groups/1695528110695639/"
  end

  element :login_field,  id: "email"
  element :password_field, id: "pass"
  element :login_button, id: "loginbutton"
  element :email_field, id: "u_0_i"

  def input_emails
    CSV.foreach("/Users/idorovskikh/ba_qa_repos/facebook_group_invite/members_export_012b90c413.csv") do |row|
      email_field.clear
      email_field.send_keys row[0]
      email_field.submit
      if @browser.page_source.include? "The person you just tried to add is already a member of this group."
        @browser.find_element(:css, "a.autofocus.layerCancel").click
      end
    end
  end
end