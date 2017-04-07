# frozen_string_literal: true

class Document < ApplicationRecord
  belongs_to :user
  validates_presence_of :doctype, :docsubject
end
