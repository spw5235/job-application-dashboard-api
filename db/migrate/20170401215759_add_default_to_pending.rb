# frozen_string_literal: true
class AddDefaultToPending < ActiveRecord::Migration[5.0]
  def change
    change_column :jobs, :pending, :boolean, default: false
  end
end
