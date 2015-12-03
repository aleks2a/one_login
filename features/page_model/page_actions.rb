class PageActions

  def initialize browser
    @browser = browser
  end

  def self.element name, finder
    define_method(name)do
      @browser.find_element(finder)
    end
  end

end
