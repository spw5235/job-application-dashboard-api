# frozen_string_literal: true

class CommunicationsController < OpenReadController
  before_action :set_communication, only: [:show, :update, :destroy]

  # GET /communications
  def index
    @communications = current_user.communications

    render json: @communications
  end

  # GET /communications/1
  def show
    render json: @communication
  end

  # POST /communications
  def create
    @communication = current_user.communications.build(communication_params)

    if @communication.save
      render json: @communication, status: :created
    else
      render json: @communication.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /communications/1
  def update
    if @communication.update(communication_params)
      render json: @communication
    else
      render json: @communication.errors, status: :unprocessable_entity
    end
  end

  # DELETE /communications/1
  def destroy
    @communication.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_communication
    # @student = Student.find(params[:id])
    @communication = Communication.where(id: params[:id], user: current_user).take
  end

    # Only allow a trusted parameter "white list" through.
    def communication_params
      params.require(:communication).permit(:c_date, :c_method, :c_subject, :c_details, :c_link, :c_notes, :user_id, :contact_ref_id, :contact_ref_name)
    end
end
