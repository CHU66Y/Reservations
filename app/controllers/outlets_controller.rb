class OutletsController < ApplicationController
  # GET /outlets
  # GET /outlets.json
  def index
    @outlets = Outlet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @outlets }
    end
  end

  # GET /outlets/1
  # GET /outlets/1.json
  def show
    @outlet = Outlet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @outlet }
    end
  end

  # GET /outlets/new
  # GET /outlets/new.json
  def new
    @outlet = Outlet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @outlet }
    end
  end

  # GET /outlets/1/edit
  def edit
    @outlet = Outlet.find(params[:id])
  end

  # POST /outlets
  # POST /outlets.json
  def create
    @outlet = Outlet.new(params[:outlet])

    respond_to do |format|
      if @outlet.save
        format.html { redirect_to @outlet, notice: 'Outlet was successfully created.' }
        format.json { render json: @outlet, status: :created, location: @outlet }
      else
        format.html { render action: "new" }
        format.json { render json: @outlet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /outlets/1
  # PUT /outlets/1.json
  def update
    @outlet = Outlet.find(params[:id])

    respond_to do |format|
      if @outlet.update_attributes(params[:outlet])
        format.html { redirect_to @outlet, notice: 'Outlet was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @outlet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outlets/1
  # DELETE /outlets/1.json
  def destroy
    @outlet = Outlet.find(params[:id])
    @outlet.destroy

    respond_to do |format|
      format.html { redirect_to outlets_url }
      format.json { head :ok }
    end
  end
end
