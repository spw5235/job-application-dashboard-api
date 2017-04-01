# frozen_string_literal: true
class AddDefaultToJobs < ActiveRecord::Migration[5.0]
  def change
    change_column :jobs, :action_required, :boolean, default: false
  end
end
