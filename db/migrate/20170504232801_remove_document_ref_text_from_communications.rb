class RemoveDocumentRefTextFromCommunications < ActiveRecord::Migration[5.0]
  def change
    remove_column :communications, :document_ref_text, :string
  end
end
