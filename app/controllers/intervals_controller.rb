class IntervalsController < ApplicationController
  # GET /intervals
  # GET /intervals.json
  def index
    @intervals = Interval.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @intervals }
    end
  end

  # GET /intervals/1
  # GET /intervals/1.json
  def show
    @interval = Interval.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @interval }
    end
  end

  # GET /intervals/new
  # GET /intervals/new.json
  def new
    @interval = Interval.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @interval }
    end
  end

  # GET /intervals/1/edit
  def edit
    @interval = Interval.find(params[:id])
  end

  # POST /intervals
  # POST /intervals.json
  def create
    @interval = Interval.new(params[:interval])

    respond_to do |format|
      if @interval.save
        format.html { redirect_to @interval, notice: 'Interval was successfully created.' }
        format.json { render json: @interval, status: :created, location: @interval }
      else
        format.html { render action: "new" }
        format.json { render json: @interval.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /intervals/1
  # PUT /intervals/1.json
  def update
    @interval = Interval.find(params[:id])

    respond_to do |format|
      if @interval.update_attributes(params[:interval])
        format.html { redirect_to @interval, notice: 'Interval was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @interval.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /intervals/1
  # DELETE /intervals/1.json
  def destroy
    @interval = Interval.find(params[:id])
    @interval.destroy

    respond_to do |format|
      format.html { redirect_to intervals_url }
      format.json { head :ok }
    end
  end
end
