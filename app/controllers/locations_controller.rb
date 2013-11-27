class LocationsController < ApplicationController  

        require  'yahoo_weatherman'
 
        client = YahooWeather::Client.new
        @response = client.fetch(12797168)

                          
  def index
    if params[:search].present?
       @locations = Location.near(params[:search], 50, :order => :distance)
     else
       @locations = Location.all
     end
  end

  def show
    @location = Location.find(params[:id])
    
    # rendering XML adds: Site Map:XML
    respond_to do |format|
        format.html    
        format.xml  {render :xml => @location.to_xml(:root => 'locations')}
    end   
  end
  
  def new
    @location = Location.new
  end

  def create
    @location = Location.new(params[:location])
    if @location.save
      redirect_to @location, :notice => "Successfully created location."
    else
      render :action => 'new'
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    if @location.update_attributes(params[:location])
      redirect_to @location, :notice  => "Successfully updated location."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_url, :notice => "Successfully destroyed location."
  end
end
