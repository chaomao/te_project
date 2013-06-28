def te_page
  @page ||= TEPage.new(get_page)
end

def get_page
  visit(TEPage::TE_URL)
  page
end