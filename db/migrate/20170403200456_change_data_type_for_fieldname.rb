# frozen_string_literal: true

class ChangeDataTypeForFieldname < ActiveRecord::Migration[5.0]
  def change
    change_column(:jobs, :salary, :string)
  end
end
