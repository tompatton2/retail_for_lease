class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.find(params[:id])

    if @property.save
      flash[:notice] = "Property Created!"
    else
      render :new
    end
  end
end
