class HomePage
  def initialize
    @txt_search_bar_css="#twotabsearchtextbox"
    @btn_search_submit_css= "#nav-search-submit-button"
  end

  def search_item(item)
    find(@txt_search_bar_css).send_keys(item)
    find(@btn_search_submit_css).click
  end

  def click_link_by_text(text)
    click_link(text)
  end

end