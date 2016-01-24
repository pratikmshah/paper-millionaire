class StocksController < ApplicationController

  def index
    @stocks = Stock.all # list all stocks currently saved in db. call to get data will be made
    @stock = Stock.new  # new stock when user inputs
  end

  def create
    @stock = Stock.new(params_stock)  # save ticker tag to database and upcase all letters

    if @stock.save
      redirect_to stocks_path
    else
      flash[:error] = @stock.errors.full_messages
      redirect_to stocks_path
    end
  end

  def destroy
    Stock.find(params[:id]).destroy
    redirect_to stocks_path
  end

  private

  def params_stock
    params.require(:stock).permit(:ticker)  # whitelist ticker data to save
  end
end
