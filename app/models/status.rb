# frozen_string_literal: true

class Status < ApplicationRecord
  belongs_to :user
  belongs_to :company
  belongs_to :job
  validates :status_type, :subject, null: false
end
