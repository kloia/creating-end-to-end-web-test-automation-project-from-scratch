base_page = BasePage.new

Given(/^go to home page$/) do
  base_page.go_to_home_page
end

Then(/^verify navigated to "([^"]*)"$/) do |domain|
  base_page.verify_url_is_correct(domain)
end

Then(/^verify the language is changed to "([^"]*)" on base page$/) do |language_code|
  base_page.verify_language_code(language_code)
end

And(/^go to customer preferences page$/) do
  base_page.navigate_customer_preferences
end

When(/^select "([^"]*)" sub menu from "([^"]*)" menu on base page$/) do |sub_category, main_category|
  base_page.click_all_categories_button
  base_page.select_sub_and_main_category(sub_category, main_category)
end

Then(/^verify "([^"]*)" sub category on base page$/) do |sub_category|
  base_page.verify_sub_category(sub_category)
end