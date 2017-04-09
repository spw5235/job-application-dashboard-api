class RemoveActionRequiredFromJobs < ActiveRecord::Migration[5.0]
  def change
    remove_column :jobs, :action_required, :boolean
  end
end
