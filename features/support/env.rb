def require_dir(dir)
  Dir.foreach(dir) do |entry|
    absolute_path = File.join(dir, entry)
    next if (entry == "." || entry == "..")
    require absolute_path if (File.file?(absolute_path) && absolute_path.end_with?("rb"))
    require_dir(absolute_path) if File.directory?(absolute_path)
  end
end

require 'rubygems'
require 'watir-webdriver'
require 'rspec'
require_dir File.join(File.dirname(__FILE__), "../pages")

#Before do
#  @browser = Watir::Browser.new :firefox
#end

module MyBrowser
  def my_browser
    @browser ||= Watir::Browser.new :firefox
  end
end

World(MyBrowser)