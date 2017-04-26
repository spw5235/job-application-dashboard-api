class AddJobDescriptionToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :job_description, :string
  end
end
