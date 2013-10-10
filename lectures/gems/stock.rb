require 'pry'
require 'stock_quote'

puts StockQuote::Stock.quote("AAPL").last
binding.pry