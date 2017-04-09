class RemovePendingFromJobs < ActiveRecord::Migration[5.0]
  def change
    remove_column :jobs, :pending, :boolean
  end
end
