class RentalAppsController < ApplicationController

    def new
      @prop = Property.find(params[:property_id])
      @rental_app = @prop.rental_apps.build
    end

    def index
      @property = Property.find(params[:property_id])
    end


    def create
      @prop = Property.find(params[:property_id])
      @rental_app = @prop.rental_apps.create(params[:rental_app])
      if @rental_app.save
        redirect_to property_rental_app_path(@prop, @rental_app)
      else
        render :new
      end

    end

    def show
      prop = Property.find(params[:property_id])
      #ensure_prop_visible prop
      @rental_app = RentalApp.find(params[:id])
      #ensure_rental_app_in_frig @rental_app, prop
    end

end
