class RemoveContactRefIdFromDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :contact_ref_id, :integer
  end
end
