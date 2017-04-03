# frozen_string_literal: true

class StatusesController < OpenReadController
  before_action :set_status, only: [:show, :update, :destroy]
  before_action :set_company, only: [:index, :create]
  before_action :set_job, only: [:index, :create]

  # GET /statuses
  def index
    @statuses = @job.statuses
    render json: { statuses: @statuses }
  end

  # GET /statuses/1
  def show
    render json: @status
  end

  # POST /statuses
  def create
    @status = current_user.statuses.build(status_params)
    @status.job = @job
    @status.company = @company

    if @status.save
      render json: @status, status: :created
    else
      render json: @status.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /statuses/1
  def update
    if @status.update(status_params)
      render json: @status
      # render json: @status, status: :ok
    else
      render json: @status.errors, status: :unprocessable_entity
    end
  end

  # DELETE /statuses/1
  def destroy
    @status.destroy
    head :no_content
  end

  private

  def set_company
    @company = current_user.companies.find(params[:company_id])
  end

  def set_job
    @job = current_user.jobs.find(params[:job_id])
  end

  def set_status
    @status = Status.where(id: params[:id], user: current_user).take
  end

  def status_params
    params.require(:status).permit(:status_type, :subject, :details, :due_date,
                                   :archive, :date_completed)
  end

  # private :set_status, :status_params
end
