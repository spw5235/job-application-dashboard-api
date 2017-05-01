class AddAppliedToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :applied, :boolean
  end
end
