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


    def test_login
        @driver.navigate.to('https://test.salesforce.com/')
      	element = @driver.find_element(:name, 'username')
      	element.send_keys "dvanderwatt@vepcg.com.edo0"
      	element = @driver.find_element(:name, 'pw')
      	element.send_keys "test2014"
      	element.submit
        # now go to opportunity
        @driver.navigate.to('https://cs16.salesforce.com/006f0000004PyW6')
        # then click on new quote
        @driver.navigate.to('https://cs16.salesforce.com/servlet/servlet.Integration?lid=00bf0000000DtHy&eid=006f0000004PyW6&ic=1')
        # enter into new quote
        element = @driver.find_element(:name, 'j_id0:j_id1:j_id2:j_id6:j_id7')
        element.submit
        ## find the first input box and enter a quantity of 10
       # element = @driver.find_element(:name, 'j_id0:j_id7:j_id50:j_id54:0:j_id61')
        #element.send_keys "10"

    end

  end
end