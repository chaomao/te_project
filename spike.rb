require 'rubygems'
require 'watir-webdriver'
require 'rspec'

def require_dir(dir)
  Dir.foreach(dir) do |entry|
    absolute_path = File.join(dir, entry)
    next if (entry == "." || entry == "..")
    require absolute_path if (File.file?(absolute_path) && absolute_path.end_with?("rb"))
    require_dir(absolute_path) if File.directory?(absolute_path)
  end
end

data = [{"number" => "0", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "1", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "2", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "3", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "4", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "5", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "6", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "7", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "8", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "9", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "10", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "11", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "12", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "13", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "14", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "15", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "16", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "17", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "18", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "19", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        },
        {"number" => "20", "category"=>"Business Meals", "date"=>"3 June 2011",
         "amount"=>"123", "currency"=>"CNY - Yuan Renminbi",
         "description" => "description", "vendor"=>"vendor",
         "payment"=>"Personal Card", "attendees"=>"attendees"
        }
]

require_dir File.join(File.dirname(__FILE__), "features/pages")

@browser = Watir::Browser.new :firefox
@page = TEPage.new @browser

@page.username.set("chaomao")
@page.password.set("MC@tw_1234")
@page.login.click

@page.add_new_expense
@page.activity_code.set("expense code")

def wait_for_expense_row(number)
  @page.add_expense_row.click
  Watir::Wait::until do
    select = @browser.select_list(:id=>"activities_0_items_#{number+5}_category")
    select.exist? && select.visible?
  end
end

#wait_for_expense_row(number)

(data.size-5).times { |id| wait_for_expense_row id }

data.each_with_index do |data_item, id|
  @page.category(id).select(data_item["category"])
  @page.date(id).set(data_item["date"])
  @page.amount(id).set(data_item["amount"])
  @page.currency(id).select(data_item["currency"])
  @page.description(id).set(data_item["description"])
  @page.vendor(id).set(data_item["vendor"])
  @page.payment(id).select(data_item["payment"])
  @page.attendees(id).set(data_item["attendees"])
end
