
# check priority list of stock ticker prices
# *sorting algorithm*
# purchase stock
# record purchase in csv
# check price -->*algorithm*--> buy/sell
#     use csv data to set and run sell/stop losses algorithm
#     remove stock ticker from list
# check list again
# choose new ticker
# repeat


#---------------------------------------------------------------------------------------------------------------------

require 'rubygems'
require 'yahoo_stock'
require 'stock_quote'
require 'csv'
require 'selenium-webdriver'
require 'market_beat'
require_relative('tools')
require_relative('stock')

#variable tweakers
monetary_risk = 1000
profit_margin = 1.015

ignition = Tools. new
#ignition.initialize_browser()
#ignition.ticker_csv()

ticker_list = CSV.read('Tickers.csv')

ticker_list[0] = 'AAPL'

x = 0
while x < 2
  stock = StockQuote::Stock.quote(ticker_list[x])
  current_price = stock.check_price(ticker_list[x])
  decision = stock.decide_sell(current_price, original_purchase_price, stock_ticker, sell_price_upper, sell_price_lower, profit_margin, position_total_usd, roi_loss_percentage)


end



#end loop

