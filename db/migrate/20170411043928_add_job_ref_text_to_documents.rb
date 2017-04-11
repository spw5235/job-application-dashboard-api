class AddJobRefTextToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :job_ref_text, :string
  end
end
