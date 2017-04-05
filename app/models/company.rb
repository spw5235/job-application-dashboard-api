# frozen_string_literal: true

class Company < ApplicationRecord
  belongs_to :user
  has_many :jobs, dependent: :destroy
  has_many :reminders, dependent: :destroy
  validates_presence_of :name
end
