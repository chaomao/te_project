def wait_for_expense_row(index)
  te_page.add_expense_row.click
  category_string = "activities_0_items_#{index+5}_category"
  Watir::Wait::until do
    category = my_browser.select_list(:id => category_string)
    category.exist? && category.visible?
  end
end