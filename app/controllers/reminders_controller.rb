# frozen_string_literal: true

class RemindersController < OpenReadController
  before_action :set_reminder, only: [:show, :update, :destroy]

  # GET /reminders
  def index
    @reminders = current_user.reminders

    render json: @reminders
  end

  # GET /reminders/1
  def show
    render json: @reminder
  end

  # POST /reminders
  def create
    @reminder = current_user.reminders.build(reminder_params)

    if @reminder.save
      render json: @reminder, status: :created
    else
      render json: @reminder.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reminders/1
  def update
    if @reminder.update(reminder_params)
      render json: @reminder
    else
      render json: @reminder.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reminders/1
  def destroy
    @reminder.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reminder
    # @student = Student.find(params[:id])
    @reminder = Reminder.where(id: params[:id], user: current_user).take
  end

  # Only allow a trusted parameter "white list" through.
  def reminder_params
    params.require(:reminder).permit(:reminder_type, :reminder_subject,
                                     :reminder_details, :reminder_date,
                                     :reminder_archive, :reminder_compl_date,
                                     :company_ref_id, :job_ref_id,
                                     :company_name, :job_title, :contact_ref_id,
                                     :contact_name)
  end
end
