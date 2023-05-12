home_page = HomePage.new

When(/^search "([^"]*)" on search bar on home page$/) do |arg|
  home_page.search_item(arg)
end

When(/^click on "([^"]*)" text on home page$/) do |arg|
  home_page.click_link_by_text(arg)
end