# frozen_string_literal: true

class ReminderSerializer < ActiveModel::Serializer
  attributes :id, :reminder_type, :reminder_subject,
             :reminder_details, :reminder_date,
             :job_ref_id,
             :job_ref_text,
             :editable

  def editable
    scope == object.user
  end
end
