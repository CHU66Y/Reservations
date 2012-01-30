class ReservationsController < ApplicationController
  # GET /reservations
  # GET /reservations.json
  
  def find_res_by_date(outlet)
    
    search_cond = Date.today
    
    if (params[:search].nil? == false) 
      search_cond = params[:search][:res_date_equals]
    end
    @res_search = Reservation.find(:all, :conditions => {:res_date => search_cond, :outlet => outlet })
    @search = Reservation.search(params[:search])
    @intervals = Interval.all
    @time_now = Time.now.strftime('%Y-%m-%d')
    return @res_search
  end
  
  def stgermains
    @reservations = find_res_by_date("St Germain's")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reservations }
    end
  end
  
 
  
    def cedar
    @reservations = find_res_by_date("Cedar")
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reservations }
    end
  end

    def lombardis
    @reservations = find_res_by_date("Lombardi's")
    
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


