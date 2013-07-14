class PropertiesController < ApplicationController

  def show
    @prop = Property.find(params[:id])
  end

  def new
    @prop = Property.new
  end

  def create
    #@property = Property.create(params[:property])
    @prop = Property.create(params[:property])
    if @prop.valid?
      redirect_to property_path(@prop)
    else
      render :new
    end

  end

end