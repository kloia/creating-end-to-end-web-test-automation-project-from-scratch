class BasePage

  def initialize
    @btn_language="#icp-nav-flyout"
    @btn_all_categories=".hm-icon-label"
    @btn_main_categories_xpath="//a[@class='hmenu-item']/div[text()='%s']"
    @btn_sub_categories_xpath="//a[@class='hmenu-item'][text()='%s']"
    @lbl_searched_category="#searchDropdownBox option[selected]"

  end 

  def go_to_home_page
    visit('https://www.amazon.com/')
  end

  def get_current_url
    URI.parse(current_url)
  end

  def verify_url_is_correct(domain)
    get_current_url.to_s.should include(domain)
  end

  def navigate_customer_preferences
    find(@btn_language).click
  end

  def verify_language_code(language)
    PageHelper.wait_until_visible(:css,@btn_language,wait:BaseConfig.wait_time,text:language)
    find(@btn_language).text.should == language
  end

  def click_all_categories_button
    find(@btn_all_categories).click
  end

  def select_sub_and_main_category(sub_category, main_category)
    find(:xpath,@btn_main_categories_xpath%main_category).click
    find(:xpath,@btn_sub_categories_xpath%sub_category).click
  end

  def verify_sub_category(sub_category)
    find(@lbl_searched_category).text.should == sub_category
  end

end