class PageActions

  def initialize browser
    @browser = browser
  end

  def self.element(name, finder)
    define_method(name) do
      begin
        wait_for_element{@browser.find_element(finder)}
      rescue => e
        raise e, "#{name} cannot be found using #{finder}"
      end
    end
  end

  def wait_for_element(timeout=30, &block)
      wait = Selenium::WebDriver::Wait.new(:timeout => timeout)
      wait.until{yield}
  end


end