class PropertiesController < ApplicationController

  def index
    @landlord = Landlord.find session[:landlord_id]
    populate_properties_for_landlord
    render 'empty' and return if @properties.empty?
  end

  def show
    @landlord = Landlord.find session[:landlord_id]
    populate_properties_for_landlord
    @prop = Property.find(params[:id])
  end

  def new
    @prop = Property.new
  end

  def create
    @prop = Property.create params[:property].merge(landlord_id: session[:landlord_id])
    if @prop.valid?
      redirect_to property_path(@prop)
      #redirect_to properties_path
    else
      render :new
    end

  end

end