#
class ParticipantsController < OpenReadController
  before_action :set_participant, only: [:update, :destroy]

  # GET /participants
  def index
    @participants = Participant.all

    render json: @participants
  end

  # GET /participants/1
  def show
    @participant = Participant.find(params[:id])

    render json: @participant
  end

  # POST /participants
  def create
    @participant = Participant.new(participant_params)

    if @participant.save
      render json: @participant, status: :created, location: @participant
    else
      render json: @participant.errors, status: :unprocessable_entity
    end
  end

  # PATCH /participants/1
  def update
    if @participant.update(participant_params)
      head :no_content
    else
      render json: @participant.errors, status: :unprocessable_entity
    end
  end

  # DELETE /participants/1
  def destroy
    @participant.destroy

    head :no_content
  end

  def set_participant
    @participant = Participant.find(params[:id])
  end

  def participant_params
    params.require(:participant).permit(:name, :email, :phone, :role)
  end

  private :set_participant, :participant_params
end
