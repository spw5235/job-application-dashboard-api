# frozen_string_literal: true

class AddCommentToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :comment, :string
  end
end
