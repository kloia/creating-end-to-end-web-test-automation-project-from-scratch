require 'capybara'
require 'capybara/dsl'
require 'selenium-webdriver'
require 'rspec'
require 'screen-recorder'
require_relative '../../utils/driver.rb'
require_relative '../../utils/page_helper.rb'
require_relative '../../config/base_config.rb'

include Capybara::DSL
include RSpec::Matchers

ScreenRecorder.ffmpeg_binary = '/opt/homebrew/bin/ffmpeg'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_selector = :css
  config.app_host = 'https://www.amazon.com'
  config.default_max_wait_time = 10
end