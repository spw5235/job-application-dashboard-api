# frozen_string_literal: true

class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :url, :note, :action_required, :pending,
             :editable

  def editable
    scope == object.user
  end
end
