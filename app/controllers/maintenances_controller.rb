class MaintenancesController < ApplicationController
  # GET /maintenances
  # GET /maintenances.xml
  def index
    @maintenances = Maintenance.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @maintenances }
    end
  end

  # GET /maintenances/1
  # GET /maintenances/1.xml
  def show
    @maintenance = Maintenance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @maintenance }
    end
  end

  # GET /maintenances/new
  # GET /maintenances/new.xml
  def new
    @maintenance = Maintenance.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @maintenance }
    end
  end

  # GET /maintenances/1/edit
  def edit
    @maintenance = Maintenance.find(params[:id])
  end

  # POST /maintenances
  # POST /maintenances.xml
  def create
    @maintenance = Maintenance.new(params[:maintenance])

    respond_to do |format|
      if @maintenance.save
        format.html { redirect_to(@maintenance, :notice => 'Maintenance was successfully created.') }
        format.xml  { render :xml => @maintenance, :status => :created, :location => @maintenance }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @maintenance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /maintenances/1
  # PUT /maintenances/1.xml
  def update
    @maintenance = Maintenance.find(params[:id])

    respond_to do |format|
      if @maintenance.update_attributes(params[:maintenance])
        format.html { redirect_to(@maintenance, :notice => 'Maintenance was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @maintenance.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /maintenances/1
  # DELETE /maintenances/1.xml
  def destroy
    @maintenance = Maintenance.find(params[:id])
    @maintenance.destroy

    respond_to do |format|
      format.html { redirect_to(maintenances_url) }
      format.xml  { head :ok }
    end
  end
end
