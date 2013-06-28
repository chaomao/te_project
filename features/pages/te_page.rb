class TEPage
  TE_URL = "http://te.thoughtworks.com"
  PREFIX = "activities_0_items"

  def initialize(page)
    @page = page
  end

  def password
    @page.find("#password")
  end

  def username
    @page.find("#username")
  end

  def activity_code
    @page.find("#activities_0_activity")
  end

  # id : 0...9,10,...
  def category(id)
    @page.find("##{PREFIX}_#{id}_category")
  end

  def date(id)
    @page.find("##{PREFIX}_#{id}_item_date_string")
  end

  def amount(id)
    @page.find("##{PREFIX}_#{id}_amount")
  end

  def currency(id)
    @page.find("##{PREFIX}_#{id}_currency")
  end

  def description(id)
    @page.find("##{PREFIX}_#{id}_description")
  end

  def vendor(id)
    @page.find("##{PREFIX}_#{id}_vendor")
  end

  def payment(id)
    @page.find("##{PREFIX}_#{id}_payment")
  end

  def attendees(id)
    @page.find("##{PREFIX}_#{id}_attendees")
  end

  def add_expense_row
    @page.find("img[alt='Addrow_button']")
  end

  def add_new_expense
    @page.visit("https://te.thoughtworks.com/expense_reports/new")
  end

  def login
    @page.find_button("LOGIN")
  end

  def save_as_draft
    @page.find_button("Save as draft")
  end

  def wait_until
    require "timeout"
    Timeout.timeout(Capybara.default_wait_time) do
      sleep(0.1) until value = yield
      value
    end
  end

  def wait_for_expense_row(index)
    add_expense_row.click
    category_string = "activities_0_items_#{index + 5}_category"
    wait_until do
      category = @page.find("##{category_string}")
      category.visible?
    end
  end
end
