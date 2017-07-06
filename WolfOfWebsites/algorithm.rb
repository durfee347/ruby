class Algorithm
  def decide_sell(current_price, original_purchase_price, stock_ticker, sell_price_upper, sell_price_lower, profit_margin, position_total_usd, roi_loss_percentage)   #add csv performance history logging here
    sell_price_upper = original_purchase_price*profit_margin
    sell_price_lower = original_purchase_price - (roi_loss_percentage * position_total_usd)


    if current_price == sell_price_lower
       true
    elsif current_price == sell_price_upper
      return true
    else false

     end
  end

  def decide_buy(stock_ticker)
    volume
  end
  end