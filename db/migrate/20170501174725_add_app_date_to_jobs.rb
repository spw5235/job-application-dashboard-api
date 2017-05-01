class AddAppDateToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :date_applied, :date
  end
end
