# frozen_string_literal: true

class ReminderSerializer < ActiveModel::Serializer
  attributes :id, :reminder_type, :reminder_subject, :reminder_details,
             :reminder_date, :reminder_archive, :reminder_compl_date,
             :company_ref_id, :job_ref_id, :company_name, :job_title,
             :contact_name, :contact_ref_id, :editable

  def editable
    scope == object.user
  end
end
