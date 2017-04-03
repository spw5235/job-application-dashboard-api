# frozen_string_literal: true
class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :statuses, :type, :status_type
  end
end
