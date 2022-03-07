class RoutesController < ApplicationController
  before_action :set_route, only: %i[ show edit update destroy ]

  # GET /routes or /routes.json
  def index
    @routes = Route.all
  end

  # GET /routes/1 or /routes/1.json
  def show
  end

  # GET /routes/new
  def new
    @route = Route.new
  end

  # GET /routes/1/edit
  def edit
  end

  # POST /routes or /routes.json
  def create
    @route = Route.new(route_params)

    respond_to do |format|
      if @route.save
        format.html { redirect_to route_url(@route), notice: "Route was successfully created." }
        format.json { render :show, status: :created, location: @route }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /routes/1 or /routes/1.json
  def update
    respond_to do |format|
      if @route.update(route_params)
        format.html { redirect_to route_url(@route), notice: "Route was successfully updated." }
        format.json { render :show, status: :ok, location: @route }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /routes/1 or /routes/1.json
  def destroy
    @route.destroy

    respond_to do |format|
      format.html { redirect_to routes_url, notice: "Route was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def result
    v_id = Vehicle.where(name: params[:v]).pluck(:id)
    end_station_id = Station.where(name: params[:e]).pluck(:id)
    start_station_id = Station.where(name: params[:s]).pluck(:id)
    @routes = Route.includes(:stops).where(
      vehicle_id: v_id, station_id: end_station_id).where(
      stops: {time: params[:t], station_id: start_station_id})
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_route
      @route = Route.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def route_params
      params.require(:route).permit(:name)
    end
end
