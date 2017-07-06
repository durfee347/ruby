class Tools
  def initialize_browser
    browser = Selenium::WebDriver.for :chrome
    browser.get 'http://www.investopedia.com/simulator/trade/tradestock.aspx'
    puts 'opened trading page'
    #browser.find_element(name: 'edit-remember').click
    browser.find_element(name: 'submit').click
    browser.find_element(name: 'email').send_keys 'robbydurfee@gmail.com'
    browser.find_element(name: 'pass').send_keys 'Pr8152529!'
    browser.find_element(name: 'login').click
    browser.get 'http://www.investopedia.com/simulator/trade/tradestock.aspx'

  end

  def ticker_csv
    ticker_prices = Array.new

    # read CSV of stock tickers to read
    ticker_labels = Array.new

    # open the CSV file with ticker names
    f = File.open('Tickers.csv', 'r')

    # loop through each record in CSV and add to ticker_labels array
    f.each_line {|line|
      ticker_labels = line.split(',')
    }

    h = File.open('ticker_prices.csv', 'r')

    h.each_line {|line|
      ticker_prices = line.split(',')
    }

  end
end