# frozen_string_literal: true

class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :posting_date, :post_url, :salary,
             :responsibility, :requirement, :deadline,
             :note, :company_name, :editable

  def editable
    scope == object.user
  end
end
