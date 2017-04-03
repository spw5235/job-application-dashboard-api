class StatusSerializer < ActiveModel::Serializer
  attributes :id, :type, :subject, :details, :due_date, :archive, :date_completed
end
