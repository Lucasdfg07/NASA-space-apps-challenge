class HomeController < ApplicationController
    def index
        @q = TradingEconomic.ransack(params[:q])
        @countries_economy_data = @q.result.order(country: :ASC)
    end
end
