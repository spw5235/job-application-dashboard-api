class RemoveDocTypeOtherUnderscoreFromDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :doc_type_other, :string
  end
end
