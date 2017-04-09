# frozen_string_literal: true

class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :posting_date, :post_url, :salary,
             :responsibility, :requirement, :deadline,
             :comment, :company_name, :company_ref_id, :editable

  def editable
    scope == object.user
  end
end
