class AddJobRefIdToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :job_ref_id, :integer
  end
end
