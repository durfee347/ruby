
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


x = 0
while x < 2
  stock = StockQuote::Stock.quote('AAPL')
  current_price = stock.check_price('AAPL')


end



#end loop

