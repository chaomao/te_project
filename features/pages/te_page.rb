class TEPage

  TE_URL = "http://te.thoughtworks.com"

  def initialize browser
    @browser = browser
    @browser.goto(TE_URL)
  end

  def password
    @browser.text_field(:id => "password")
  end

  def username
    @browser.text_field(:id => "username")
  end

  def activity_code
    @browser.text_field(:id => "activities_0_activity")
  end

  def prefix
    "activities_0_items"
  end

  # id : 0...9,10,...
  def category(id)
    @browser.select_list(:id => "#{prefix}_#{id}_category")
  end

  def date(id)
    @browser.text_field(:id=>"#{prefix}_#{id}_item_date_string")
  end

  def amount(id)
    @browser.text_field(:id=>"#{prefix}_#{id}_amount")
  end

  def currency(id)
    @browser.select_list(:id => "#{prefix}_#{id}_currency")
  end

  def description(id)
    @browser.text_field(:id=>"#{prefix}_#{id}_description")
  end

  def vendor(id)
    @browser.text_field(:id=>"#{prefix}_#{id}_vendor")
  end

  def payment(id)
    @browser.select_list(:id=>"#{prefix}_#{id}_payment")
  end

  def attendees(id)
    @browser.text_field(:id=>"#{prefix}_#{id}_attendees")
  end

  def add_expense_row
    @browser.links.find do |link|
      !link.attribute_value(:onclick).nil? && link.attribute_value(:onclick).include?("add_row")
    end
  end

  def add_new_expense
    @browser.goto("https://te.thoughtworks.com/expense_reports/new")
  end

  def login
    @browser.button(:text => "LOGIN")
  end

  def save_as_draft
    @browser.button(:value => "Save as draft")
  end
end