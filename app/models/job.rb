# frozen_string_literal: true

class Job < ApplicationRecord
  belongs_to :user
  belongs_to :company
  validates :title, presence: true
end
