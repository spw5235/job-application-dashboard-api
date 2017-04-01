# frozen_string_literal: true

class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :url, :note, :editable

  def editable
    scope == object.user
  end
end
