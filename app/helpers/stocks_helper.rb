module StocksHelper

  # returns stock data for requested stock
  def stock_info(ticker)
    YahooFinance::Client.new.quotes([ticker], info_request)
  end

  # list of all data pieces to retrieve for stock request
  def info_request
    [:name, :symbol, :ask, :change_and_percent_change, :last_trade_date, :days_range,
     :weeks_range_52, :open, :volume, :average_daily_volume, :market_capitalization,
     :pe_ratio, :dividend_per_share, :dividend_yield, :earnings_per_share, :float_shares, :ebitda]
  end

  # returns historical stock data for over a year
  def stock_historical_info(ticker)
    YahooFinance::Client.new.historical_quotes(ticker, { raw: false, period: :yearly })
  end

end
