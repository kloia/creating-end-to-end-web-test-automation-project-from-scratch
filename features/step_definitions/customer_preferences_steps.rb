customer_preferences = CustomerPreferences.new

When(/^change language to "([^"]*)" on customer preferences page$/) do |language|
  customer_preferences.choose_language_by_text(language)
  customer_preferences.save_changes
end