class RemoveDocTypeOtherFromDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :doctypeother, :string
  end
end
