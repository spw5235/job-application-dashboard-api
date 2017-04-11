# frozen_string_literal: true

class ReminderSerializer < ActiveModel::Serializer
  attributes :id, :reminder_type, :reminder_subject,
             :reminder_details, :reminder_date,
             :reminder_archive, :reminder_compl_date,
             :job_ref_id, :contact_ref_id,
             :document_ref_id, :communication_ref_id,
             :job_ref_text, :contact_ref_text,
             :document_ref_text, :communication_ref_text,
             :editable

  def editable
    scope == object.user
  end
end
