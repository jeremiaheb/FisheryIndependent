class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :destroy]

  # GET /trips
  # GET /trips.json
  def index
    @trips = policy_scope(Trip)
    
    respond_to do |format|
      format.html
      format.xlsx
    end
  end

  # GET /trips/1
  # GET /trips/1.json
  def show
  end

  # GET /trips/new
  def new
    @trip = Trip.new user_id: current_user.id

    sample = @trip.samples.build
    sample.drops.build
    sample.catches.build


  end

  # GET /trips/1/edit
  def edit

  end

  # POST /trips
  # POST /trips.json
  def create
    @trip = Trip.new(trip_params)

    respond_to do |format|
      if @trip.save
        format.html { redirect_to @trip, notice: 'Trip was successfully created.' }
        format.json { render :show, status: :created, location: @trip }
      else
        format.html { render :new }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trips/1
  # PATCH/PUT /trips/1.json
  def update

    @trip = Trip.find(params[:id])

    respond_to do |format|
      #binding.pry
      if @trip.update_attributes(trip_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trips/1
  # DELETE /trips/1.json
  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(:date, :vessel, :captain_id, :user_id, :manager_id, :depart_time, :return_time, :trip_notes, :port_location,
                                  samples_attributes: [:id, :grid_number, :wind_speed, :wave_height, :current_speed, :sample_notes, :_destroy,
                                                       drops_attributes: [:id, :sample_id, :drop_number, :lines, :start_time, :start_depth, :start_lat_deg, :start_lat_min, :start_lon_deg, :start_lon_min, :end_time, :end_depth, :end_lat_deg, :end_lat_min, :end_lon_deg, :end_lon_min, :fish_caught, :_destroy],
                                                       catches_attributes: [:id, :sample_id, :animal_id, :fork_length, :girth, :baits_taken, :retained, :tag_number, :_destroy],
                                                       animal_attributes: [:id, :species_cd, :scientific_name, :_destroy]])
    end
end
