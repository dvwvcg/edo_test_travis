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
#      @driver.type("username","")

        @driver.navigate.to('https://test.salesforce.com/')
	element = @driver.find_element(:name, 'username')
	element.send_keys "dvanderwatt@vepcg.com.edo0"
	element = @driver.find_element(:name, 'pw')
	element.send_keys "test2014"
	element.submit

#      @driver.type("password","test2014")
#      @driver.click("Login")
    end

  end
end