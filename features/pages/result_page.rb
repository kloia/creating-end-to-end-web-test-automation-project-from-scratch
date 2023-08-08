class ResultPage
  def initialize
    @lbl_search_result_css=".a-color-state.a-text-bold"
    @lbl_no_search_result_css=".s-search-results"
    @btn_product_by_index_xpath="(//*[@class='a-section aok-relative s-image-square-aspect'])[%s]"
    @btn_product_by_name_xpath="//*[contains(@class,'a-color-base a-text-normal')][text()='%s']"

  end

  def verify_search_results(item)
    find(@lbl_search_result_css).text.should =='"'+item+'"'
  end

  def verify_no_search_result(item)
    find(@lbl_no_search_result_css).text.should include("No results for " + item)
  end

  def click_on_product_by_index(number)
    find(:xpath, @btn_product_by_index_xpath % number).click
  end

  def click_on_product_by_name(item_name)
    find(:xpath, @btn_product_by_name_xpath % item_name).click
  end

end