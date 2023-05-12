class HomePage
  def initialize
    @txt_search_bar="#twotabsearchtextbox"
    @btn_search_submit= "#nav-search-submit-button"
  end

  def search_item(item)
    find(@txt_search_bar).send_keys(item)
    find(@btn_search_submit).click
  end

  def click_link_by_text(text)
    click_link(text)
  end

end