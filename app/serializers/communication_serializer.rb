# frozen_string_literal: true

class CommunicationSerializer < ActiveModel::Serializer
  attributes :id, :c_date, :c_method, :c_subject, :c_details, :c_link, :c_notes,
             :job_ref_id, :job_ref_text, :editable

  def editable
    scope == object.user
  end
end
