class FuelUpsController < ApplicationController
  before_filter :authenticate_user!
  before_filter :get_my_vehicle
  # GET /fuel_ups
  # GET /fuel_ups.xml
  def index
    @fuel_ups = FuelUp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @fuel_ups }
    end
  end

  # GET /fuel_ups/1
  # GET /fuel_ups/1.xml
  def show
    @fuel_up = FuelUp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @fuel_up }
    end
  end

  # GET /fuel_ups/new
  # GET /fuel_ups/new.xml
  def new
    @fuel_up = FuelUp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @fuel_up }
    end
  end

  # GET /fuel_ups/1/edit
  def edit
    @fuel_up = FuelUp.find(params[:id])
  end

  # POST /fuel_ups
  # POST /fuel_ups.xml
  def create
    @fuel_up = FuelUp.new(params[:fuel_up])

    respond_to do |format|
      if @fuel_up.save
        format.html { redirect_to(@fuel_up, :notice => 'Fuel up was successfully created.') }
        format.xml  { render :xml => @fuel_up, :status => :created, :location => @fuel_up }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @fuel_up.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /fuel_ups/1
  # PUT /fuel_ups/1.xml
  def update
    @fuel_up = FuelUp.find(params[:id])

    respond_to do |format|
      if @fuel_up.update_attributes(params[:fuel_up])
        format.html { redirect_to(@fuel_up, :notice => 'Fuel up was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @fuel_up.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /fuel_ups/1
  # DELETE /fuel_ups/1.xml
  def destroy
    @fuel_up = FuelUp.find(params[:id])
    @fuel_up.destroy

    respond_to do |format|
      format.html { redirect_to(fuel_ups_url) }
      format.xml  { head :ok }
    end
  end
end
