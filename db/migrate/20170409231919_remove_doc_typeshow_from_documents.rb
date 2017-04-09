class RemoveDocTypeshowFromDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :doctypeshow, :string
  end
end
