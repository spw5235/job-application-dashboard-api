# frozen_string_literal: true
class ContactsController < OpenReadController
  before_action :set_contact, only: [:show, :update, :destroy]

  # GET /contacts
  def index
    @contacts = current_user.contacts

    render json: @contacts
  end

  # GET /contacts/1
  def show
    render json: @contact
  end

  # POST /contacts
  def create
    @contact = current_user.contacts.build(contact_params)

    if @contact.save
      render json: @contact, status: :created
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /contacts/1
  def update
    if @contact.update(contact_params)
      render json: @contact
    else
      render json: @contact.errors, status: :unprocessable_entity
    end
  end

  # DELETE /contacts/1
  def destroy
    @contact.destroy
    head :no_content
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_contact
    # @student = Student.find(params[:id])
    @contact = Contact.where(id: params[:id], user: current_user).take
  end

  # Only allow a trusted parameter "white list" through.
  def contact_params
    params.require(:contact).permit(:first_name, :last_name, :full_name,
                                    :nickname, :job_title, :email, :phone,
                                    :website, :notes,
                                    :job_ref_id, :job_ref_text)
  end
end
