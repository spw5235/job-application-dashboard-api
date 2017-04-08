class Communication < ApplicationRecord
  belongs_to :user
  validates_presence_of :c_method, :c_subject
end
