require 'selenium-webdriver'
require 'test/unit'

module Test
  class TestHomePage < Test::Unit::TestCase

    def setup
      @driver = Selenium::WebDriver.for :phantomjs
      @driver.navigate.to('https://login.salesforce.com/')
    end

    def teardown
      @driver.quit
    end

    def test_home_page_title
      assert_equal('salesforce.com - Customer Secure Login Page', @driver.title)
    end
  end
end