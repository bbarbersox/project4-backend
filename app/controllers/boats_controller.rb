#
class BoatsController < OpenReadController
  before_action :set_boat, only: [:update, :destroy]

  # GET /boats --- find & return info for all boats or a subset
  # of boats based on the parameters specified by the user
  def index
    if params[:title]
      @boats = Boat.find(params[:title])
    else
      if params[:open_seats]
        @boats = Boat.find(params[:open_seats])
      else
        @boats = Boat.all
      end
    end
    render json: @boats
  end

  # GET /boats/1 --- find & return info for a single boat
  def show
    @boat = Boat.find(params[:id])

    render json: @boat
  end

  # POST /boats --- create a single boat  with the fields passed
  def create
    @boat = Boat.new(boat_params)

    if @boat.save
      render json: @boat, status: :created, location: @boat
    else
      render json: @boat.errors, status: :unprocessable_entity
    end
  end

  # PATCH /boats/1 --- Update a single boats record
  def update
    if @boat.update(boat_params)
      head :no_content
    else
      render json: @boat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /boats/1 --- Delete a single boat
  def destroy
    @boat.destroy

    head :no_content
  end

  def set_boat
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:title, :description, :capacity, :open_seats)
  end

  private :set_boat, :boat_params
end
