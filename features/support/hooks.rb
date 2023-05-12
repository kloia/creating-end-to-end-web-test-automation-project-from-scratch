Before do
  Driver.get_driver
  page.driver.browser.manage.window.maximize
end

After do |scenario|
  begin
    scenario_name = scenario.name.gsub(/[^A-Za-z0-9 ]/, "").gsub(/\s+/, "_")
    if scenario.failed?
      puts "FAILED ==> #{scenario_name}\n#{scenario.exception}:#{scenario.exception.message}"
    else
      puts "PASSED ==> #{scenario_name}"
    end
    Capybara.current_session.driver.quit
  rescue Exception => exception
    puts "FAILED ==> #{exception}"
    Capybara.current_session.driver.quit
  end
end

