class AddDocumentRefIdToCommunications < ActiveRecord::Migration[5.0]
  def change
    add_column :communications, :document_ref_id, :integer
  end
end
