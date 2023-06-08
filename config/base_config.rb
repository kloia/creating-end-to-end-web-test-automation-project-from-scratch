# frozen_string_literal: true

module BaseConfig

  @wait_time = 20

  def self.wait_time
    @wait_time
  end

  @remote_url = ENV['remote_url'] || 'http://localhost:4444'
  def self.remote_url
    @remote_url
  end

  @browser = ENV['browser'] || 'remote-chrome'
  #     Available options
  #       * chrome
  #       * firefox
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
