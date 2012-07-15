def te_page
  @browser ||= Watir::Browser.new(:firefox)
  @page ||= TEPage.new(@browser)
end