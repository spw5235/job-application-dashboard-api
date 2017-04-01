# frozen_string_literal: true

class Company < ApplicationRecord
  belongs_to :user
  validates_presence_of :name
end
