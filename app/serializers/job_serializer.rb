# frozen_string_literal: true

class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :posting_date, :post_url, :salary,
             :responsibility, :requirement, :deadline, :job_description,
             :note, :company_name, :applied, :date_applied, :default_reminder,
             :priority_num, :editable

  def editable
    scope == object.user
  end
end
