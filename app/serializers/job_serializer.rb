# frozen_string_literal: true

class JobSerializer < ActiveModel::Serializer
  attributes :id, :title, :posting_date, :post_url, :salary, :requirement,
             :responsibility, :deadline, :comment, :editable

  def editable
    scope == object.user
  end
end
