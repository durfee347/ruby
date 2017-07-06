class Stock


  def SELL(stock_ticker)
    num_shares =
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

    return
  end



  def BUY(stock_ticker, monetary_risk, current_price)

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



    return
  end

end