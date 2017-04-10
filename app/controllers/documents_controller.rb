# frozen_string_literal: true

class DocumentsController < OpenReadController
  before_action :set_document, only: [:show, :update, :destroy]

  # GET /documents
  def index
    @documents = current_user.documents

    render json: @documents
  end

  # GET /documents/1
  def show
    render json: @document
  end

  # POST /documents
  def create
    @document = current_user.documents.build(document_params)

    if @document.save
      render json: @document, status: :created
    else
      render json: @document.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /documents/1
  def update
    if @document.update(document_params)
      render json: @document
    else
      render json: @document.errors, status: :unprocessable_entity
    end
  end

  # DELETE /documents/1
  def destroy
    @document.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_document
    # @student = Student.find(params[:id])
    @document = Document.where(id: params[:id], user: current_user).take
  end

  # Only allow a trusted parameter "white list" through.
  def document_params
    params.require(:document).permit(:doctype, :docsubject, :doctext, :docurl, :company_ref_id, :company_name, :contact_ref_id, :contact_ref_name, :docdate, :job_ref_id)
  end
end
