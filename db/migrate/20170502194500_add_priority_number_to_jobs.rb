class AddPriorityNumberToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :priority_num, :integer, :default => 1
  end
end
