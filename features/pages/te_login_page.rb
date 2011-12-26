class TELoginPage

  TE_URL = "http://te.thoughtworks.com"

  def initialize browser
    @browser = browser
    @browser.goto(TE_URL)
  end

  def login(username, password)
    @browser.text_field(:id => "username").set(username)
    @browser.text_field(:id => "password").set(password)
  end
end