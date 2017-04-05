# frozen_string_literal: true

class ReminderSerializer < ActiveModel::Serializer
  attributes :id, :reminder_type, :reminder_subject, :reminder_details,
             :reminder_date, :reminder_archive, :reminder_compl_date, :editable

  def editable
    scope == object.user
  end
end
