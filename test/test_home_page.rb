require 'selenium-webdriver'
require 'test/unit'

module Test
  class TestHomePage < Test::Unit::TestCase

    def setup
      @driver = Selenium::WebDriver.for :phantomjs
      @driver.navigate.to('https://test.salesforce.com/')
    end

    def teardown
      @driver.quit
    end

    def test_home_page_title
      assert_equal('salesforce.com - Customer Secure Login Page', @driver.title)
    end


    def test_new
      @driver.type("username","dvanderwatt@vepcg.com.edo0")
      @driver.type("password","test1234")
      @driver.click("Login")
      assert_equal("salesforce.com - Enterprise Edition", @driver.title)
    end

  end
end