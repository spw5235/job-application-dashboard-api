# frozen_string_literal: true

class ChangeCommentColumnNameJobs < ActiveRecord::Migration[5.0]
  def change
    rename_column :jobs, :comment, :note
  end
end
