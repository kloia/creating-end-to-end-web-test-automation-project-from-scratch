class PageHelper

  def self.wait_until_visible(locator_type, locator, wait: BaseConfig.wait_time, text:)
    page.should have_selector(locator_type, locator, wait: wait, visible: true, text:text)
  end

end