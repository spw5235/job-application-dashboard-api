# frozen_string_literal: true

class CommunicationSerializer < ActiveModel::Serializer
  attributes :id, :c_date, :c_method, :c_subject, :c_details, :c_link, :c_notes, :contact_ref_id, :contact_ref_text, :job_ref_id, :job_ref_text, :document_ref_id, :document_ref_text, :editable

  def editable
    scope == object.user
  end
end
