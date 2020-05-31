class HomeController < ApplicationController
    def index
    end

    def call_service
        # Colocar nos jobs
        CovidPopulationService.new.call

        redirect_to root_path
    end
end
