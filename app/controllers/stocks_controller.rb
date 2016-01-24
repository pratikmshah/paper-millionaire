class StocksController < ApplicationController

  def index
    @stocks = Stock.all # list all stocks currently saved in db. call to get data will be made
    @stock = Stock.new  # new stock when user inputs
  end

end
