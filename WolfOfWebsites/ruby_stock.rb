class RubyStock
  require 'net/http'
  def RubyStock::getStocks(*symbols)
    Hash[*(symbols.collect{|symbol|[symbol,Hash[\
        *(Net::HTTP.get('quote.yahoo.com','/d?f=nl1&s='+symbol).chop\
        .split(',').unshift("Name").insert(2,"Price"))]];}.flatten)];
  end
end