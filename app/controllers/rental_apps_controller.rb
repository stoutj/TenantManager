class RentalAppsController < ApplicationController

    def new
      @prop = Property.find(params[:property_id])
      @rental_app = @prop.rental_apps.build
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


#def show
#  frig = Refrigerator.find(params[:frige_id])
#  ensure_frig_visible frig
#  @beer = Beer.find(params[:id])
#  ensure_beer_in_frig @beer, frig
#end
#
#def new
#  @frig = Refrigerator.find(params[:frige_id])
#  ensure_frig_visible @frig
#  @beer = Beer.new
#end
#
#def create
#  @frig = Refrigerator.find(params[:frige_id])
#  ensure_frig_visible @frig
#  @beer = @frig.beers.new(params[:beer])
#  if @beer.save
#    redirect_to frige_beer_path(@frig, @beer)
#  else
#    render :new
#  end
#end
#end