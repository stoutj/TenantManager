class RentalAppsController < ApplicationController

    def new
      @rental_app = RentalApp.new
      render :new
    end

    def create
      @rental_app = RentalApp.create(params[:rental_app])
      if @rental_app.save
        redirect_to rental_app_path  @rental_app
      else
        render :new
      end

    end


    def show
      @rental_app = RentalApp.find(params[:id])
    end
end