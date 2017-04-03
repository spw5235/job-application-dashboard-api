# frozen_string_literal: true

class JobsController < OpenReadController
  before_action :set_job, only: [:show, :update, :destroy]
  before_action :set_company, only: [:index, :create]

  # GET /jobs
  def index
    @jobs = @company.jobs
    render json: { jobs: @jobs }
  end

  # GET /jobs/1
  def show
    render json: @job
  end

  # POST /jobs
  def create
    @job = current_user.jobs.build(job_params)
    @job.company = @company

    if @job.save
      render json: @job, status: :created
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jobs/1
  def update
    if @job.update(job_params)
      render json: @job
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jobs/1
  def destroy
    @job.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job
      @job = Job.where(id: params[:id], user: current_user).take
    end

    def set_company
      @company = current_user.companies.find(params[:company_id])
    end

    # Only allow a trusted parameter "white list" through.
    def job_params
      params.require(:job).permit(:title, :posting_date, :post_url, :salary, :responsibility, :requirement, :deadline, :action_required, :pending)
    end
end
