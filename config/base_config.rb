# frozen_string_literal: true

module BaseConfig

  @wait_time = 20
  # Default wait time variable to be used on Capybara functions.
  def self.wait_time
    @wait_time
  end

  #@options Inside a docker container => 'http://selenium-hub:4444'
  #Outside of a docker container => 'http://localhost:4444'
  @remote_url = ENV['remote_url'] || 'http://selenium-hub:4444'
  def self.remote_url
    @remote_url
  end

  @browser = ENV['browser'] || 'remote-chrome'
  #     Available options
  #       * chrome
  #       * firefox
  #       * remote-chrome
  #       * remote-firefox
  def self.browser
    @browser
  end

  @headless = ENV['headless'] || 'false'
  # Available options
  #   * 'false'
  #   * 'true'
  def self.headless
    @headless
  end
end
