# frozen_string_literal: true

class RemindersController < OpenReadController
  before_action :set_reminder, only: [:show, :update, :destroy]
  before_action :set_company, only: [:index, :create]

  # GET /reminders
  def index
    @reminders = @company.reminders
    render json: { reminders: @reminders }
  end

  # GET /reminders/1
  def show
    render json: @reminder
  end

  # POST /reminders
  def create
    @reminder = current_user.reminders.build(reminder_params)
    @reminder.company = @company

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
      @reminder = Reminder.where(id: params[:id], user: current_user).take
    end

    def set_company
      @company = current_user.companies.find(params[:company_id])
    end

    # Only allow a trusted parameter "white list" through.
    def reminder_params
      params.require(:reminder).permit(:reminder_type, :reminder_subject,
                                       :reminder_details, :reminder_date,
                                       :reminder_archive, :reminder_compl_date)
    end
end
