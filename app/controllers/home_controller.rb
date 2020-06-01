class HomeController < ApplicationController
    def index
        @q = TradingEconomic.ransack(params[:q])
        @countries_economy_data = @q.result.order(country: :ASC)
    end

    def call_service
        # Colocar nos jobs
        CovidPopulationService.new.call

        redirect_to root_path
    end
end
