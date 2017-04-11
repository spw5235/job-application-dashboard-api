class RemoveContactRefNameFromDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :contact_ref_name, :string
  end
end
