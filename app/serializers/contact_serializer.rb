# frozen_string_literal: true

class ContactSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :full_name, :nickname, :job_title,
             :email, :phone, :website, :notes, :company_name, :job_ref_id,
             :job_ref_text, :editable

  def editable
    scope == object.user
  end
end
