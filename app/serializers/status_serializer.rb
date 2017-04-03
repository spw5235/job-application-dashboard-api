# frozen_string_literal: true

class StatusSerializer < ActiveModel::Serializer
  attributes :id, :status_type, :subject, :details, :due_date, :archive,
             :date_completed, :editable

  def editable
    scope == object.user
  end
end
