Given /^I login TE with username "([^"]*)" and password "([^"]*)"$/ do |username, password|
  te_page.username.set(username)
  te_page.password.set(password)
  te_page.login.click
end

When /^I add a new expense report with project code "([^"]*)"$/ do |project_code|
  te_page.add_new_expense
  te_page.activity_code.set(project_code)
end

When /^I fill expense report$/ do |expense_table|
  data = expense_table.hashes
  (data.size - 5).times { |i| te_page.wait_for_expense_row(i) } if data.size > 5
  fill_expense(data)
end

Then /^I want to save as draft$/ do
  te_page.save_as_draft.click
end

def fill_expense(data)
  data.each_with_index do |data_item, id|
    te_page.category(id).select(data_item["category"])
    te_page.date(id).set(data_item["date"])
    te_page.amount(id).set(data_item["amount"])
    te_page.currency(id).select(data_item["currency"])
    te_page.description(id).set(data_item["description"])
    te_page.vendor(id).set(data_item["vendor"])
    te_page.payment(id).select(data_item["payment"])
    te_page.attendees(id).set(data_item["attendees"])
  end
end
