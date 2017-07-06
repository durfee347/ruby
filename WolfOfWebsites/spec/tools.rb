class Tools
  def SELL(stock_ticker, num_shares)
    browser.find_element(name: 'symbolTextbox').send_keys stock_ticker
    browser.find_element(name: 'quantityTextbox').send_keys num_shares
    #Select the dropdown button
    dropdown_list = browser.find_element(id: 'transactionTypeDropDown')
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each { |option| option.click if option.text == 'sell' }
    #browser.find_element(id: 'previewButton').click
    puts 'sold '
    sleep(20)
    #browser.find_element(name: 'submitOrder').click
    ticker_labels[i] = stock_ticker
    ticker_prices[i] = current_price
    return
  end



  def BUY(stock_ticker, current_price, monetary_risk)

    num_shares = monetary_risk / current_price
    browser.find_element(name: 'symbolTextbox').send_keys stock_ticker
    browser.find_element(name: 'quantityTextbox').send_keys num_shares
    #Select the dropdown button
    dropdown_list = browser.find_element(id: 'transactionTypeDropDown')
    options = dropdown_list.find_elements(tag_name: 'option')
    options.each { |option| option.click if option.text == 'buy' }
    #browser.find_element(id: 'previewButton').click
    puts 'bought'
    sleep(20)
    #browser.find_element(name: 'submitOrder').click


    ticker_labels[i] = stock_ticker
    ticker_prices[i] = current_price
    return
  end

  def initialize_browser()
    browser = Selenium::WebDriver.for :chrome
    browser.get 'http://www.investopedia.com/simulator/trade/tradestock.aspx'
    puts 'opened trading page'
    #browser.find_element(name: 'edit-remember').click
    browser.find_element(name: 'submit').click
    browser.find_element(name: 'email').send_keys 'robbydurfee@gmail.com'
    browser.find_element(name: 'pass').send_keys 'Pr8152529!'
    browser.find_element(name: 'login').click
    browser.get 'http://www.investopedia.com/simulator/trade/tradestock.aspx'
    return
  end

  def ticker_csv()
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
  return
  end
end