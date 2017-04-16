# frozen_string_literal: true

class JobsController < OpenReadController
  before_action :set_job, only: [:show, :update, :destroy]
  before_action :set_contact, only: [:destroy]

  # GET /jobs
  def index
    @jobs = current_user.jobs

    render json: @jobs
  end

  # GET /jobs/1
  def show
    render json: @job
  end

  # POST /jobs
  def create
    @job = current_user.jobs.build(job_params)

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

    @job_id = @job.id
    @related_contacts = Contact.where(job_ref_id: @job_id)
    @related_contacts_arr = @related_contacts.pluck(:id)
    binding.pry
    @job.destroy
    @remove_contact = Contact.where(:id => @related_contacts_arr)

    @remove_contact.delete_all
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_job
    # @student = Student.find(params[:id])
    @job = Job.where(id: params[:id], user: current_user).take
  end

  def set_contact
    # @student = Student.find(params[:id])
    @contact = Contact.where(id: params[:id], user: current_user).take
  end

  # Only allow a trusted parameter "white list" through.
  def job_params
    params.require(:job).permit(:title, :posting_date, :post_url, :salary,
                                :responsibility, :requirement, :deadline,
                                :note, :company_name)
  end
end
