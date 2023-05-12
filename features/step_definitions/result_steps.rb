result_page = ResultPage.new

Then(/^verify "([^"]*)" search results on result page$/) do |arg|
  result_page.verify_search_results(arg)
end

Then(/^verify no results for "([^"]*)" on result page$/) do |arg|
  result_page.verify_no_search_result(arg)
end

And(/^click on (\d+)st product on results page$/) do |number|
  result_page.click_on_product_by_index(number)
end

And(/^click on the product named "([^"]*)" on results page$/) do |item_name|
  result_page.click_on_product_by_name(item_name)
end