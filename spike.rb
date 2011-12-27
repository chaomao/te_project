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

require_dir File.join(File.dirname(__FILE__), "features/pages")

@browser = Watir::Browser.new :firefox
@page = TELoginPage.new @browser

@page.login("123", "123")
