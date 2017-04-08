class RemoveIndexRefFromJobs < ActiveRecord::Migration[5.0]
  def change
    remove_index(:jobs, :name => 'index_jobs_on_company_id')
  end
end
