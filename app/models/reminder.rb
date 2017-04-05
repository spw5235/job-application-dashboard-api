# frozen_string_literal: true

class Reminder < ApplicationRecord
  belongs_to :user
  validates :reminder_type, :reminder_subject, presence: true
end
