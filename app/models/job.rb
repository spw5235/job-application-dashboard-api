# frozen_string_literal: true

class Job < ApplicationRecord
  belongs_to :user
  validates :title, :company_name, presence: true
end
