# frozen_string_literal: true

class Job < ApplicationRecord
  belongs_to :user
  belongs_to :company
  has_many :statuses, dependent: :destroy
  validates :title, presence: true
end
