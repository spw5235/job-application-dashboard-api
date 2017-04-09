class RemoveCompanyRefIdFromJobs < ActiveRecord::Migration[5.0]
  def change
    remove_column :jobs, :company_ref_id, :boolean
  end
end
