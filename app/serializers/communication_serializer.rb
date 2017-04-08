# frozen_string_literal: true

class CommunicationSerializer < ActiveModel::Serializer
  attributes :id, :c_date, :c_method, :c_subject, :c_details, :c_link, :c_notes, :contact_ref_id, :contact_ref_name, :editable

  def editable
    scope == object.user
  end
end
