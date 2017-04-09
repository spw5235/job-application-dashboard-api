class RemoveDocTypeShowUnderscoreFromDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :doc_type_show, :string
  end
end
