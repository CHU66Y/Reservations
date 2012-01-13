class ReservationsController < ApplicationController
  # GET /reservations
  # GET /reservations.json
  def stgermains
    @reservations = Reservation.where :outlet => "St Germain's"
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reservations }
    end
  end
  
    def cedar
    @reservations = Reservation.where :outlet => "Cedar"
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @reservations }
    end
  end

    def lombardis
    @reservations = Reservation.where :outlet => "Lombardi's"
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
    

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @reservation }
    end
  end

  # GET /reservations/1/edit
  def edit
    @reservation = Reservation.find(params[:id])
  end

  # POST /reservations
  # POST /reservations.json
  def create
    @reservation = Reservation.new(params[:reservation])
    @reservation.save
    redirect_to reservations_path
  end

  # PUT /reservations/1
  # PUT /reservations/1.json
  def update
    @reservation = Reservation.find(params[:id])
    @reservation.update_attributes(params[:reservation])
    redirect_to reservations_path
  end

  # DELETE /reservations/1
  # DELETE /reservations/1.json
  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy

    respond_to do |format|
      format.html { redirect_to reservations_url }
      format.json { head :ok }
    end
  end
end
