Before do |scenario|
  scenario_name = scenario.name.gsub(/[^A-Za-z0-9 ]/, "").gsub(/\s+/, "_")
  Driver.get_driver
  page.driver.browser.manage.window.maximize
  puts "STARTED ==> #{scenario_name}"
  @recorder = ScreenRecorder::Desktop.new(output: "output/failed_tests/#{scenario_name}.mkv")
  @recorder.start
end

After do |scenario|
  begin
    scenario_name = scenario.name.gsub(/[^A-Za-z0-9 ]/, "").gsub(/\s+/, "_")
    Capybara.current_session.driver.quit
    @recorder.stop
    if scenario.failed?
      puts "FAILED ==> #{scenario_name}\n#{scenario.exception}:#{scenario.exception.message}"
    else
      puts "PASSED ==> #{scenario_name}"
      File.delete("outputs/failed_tests/#{scenario_name}.mkv")
    end
  rescue Exception => exception
    puts "FAILED ==> #{exception}"
    Capybara.current_session.driver.quit
    @recorder.stop
  end
end