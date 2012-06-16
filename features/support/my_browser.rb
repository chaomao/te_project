def my_browser
  @browser ||= Watir::Browser.new(:firefox)
end