class ReservationsController < ApplicationController
  # GET /reservations
  # GET /reservations.json
  def stgermains
    
    @search = Reservation.search(params[:search])
    @reservations = @search.where(:outlet => "St Germain's")
    @intervals = Interval.all
    @time_now = Time.now.strftime('%Y-%m-%d')

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reservations }
    end
  end
  
        
    #def sum(time)
    #  @reservations.where(:time => time).sum(:party)
    #end 
  
  
  
    def cedar
    #@reservations = Reservation.recent.where :outlet => "Cedar"
    @search = Reservation.search(params[:search])
    @reservations = @search.where(:outlet => "Cedar")
    @intervals = Interval.all
    @time_now = Time.now.strftime('%Y-%m-%d')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reservations }
    end
  end

    def lombardis
    #@reservations = Reservation.recent.where :outlet => "Lombardi's"
    @search = Reservation.search(params[:search])
    @reservations = @search.where(:outlet => "Lombardi's")
    @intervals = Interval.all
    @time_now = Time.now.strftime('%Y-%m-%d')
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reservations }
    end
  end
  
  # GET /reservations/1
  # GET /reservations/1.json
  def show
    @reservation = Reservation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @reservation }
    end
  end

  # GET /reservations/new
  # GET /reservations/new.json
  def new
    @reservation = Reservation.new
    @outlet = params[:outlet]

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reservation }
    end
  end

  # GET /reservations/1/edit
  def edit
    @reservation = Reservation.find(params[:id])
    @outlet = params[:outlet]
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(params[:reservation])
    @reservation.save
    if @reservation.outlet == "St Germain's"
      redirect_to stgermains_path
    else
      if @reservation.outlet == "Cedar"
        redirect_to cedar_path
    else
      if @reservation.outlet == "Lombardi's"
        redirect_to lombardis_path
      end
      end
    end
  end

  # PUT /reservations/1
  # PUT /reservations/1.json
  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update_attributes(params[:reservation])
        if @reservation.outlet == "St Germain's"
      redirect_to stgermains_path
    else
      if @reservation.outlet == "Cedar"
        redirect_to cedar_path
    else
      if @reservation.outlet == "Lombardi's"
        redirect_to lombardis_path
      end
      end
    end
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
        if @reservation.outlet == "St Germain's"
      redirect_to stgermains_path
    else
      if @reservation.outlet == "Cedar"
        redirect_to cedar_path
    else
      if @reservation.outlet == "Lombardi's"
        redirect_to lombardis_path
      end
      end
    end 

  end
end


