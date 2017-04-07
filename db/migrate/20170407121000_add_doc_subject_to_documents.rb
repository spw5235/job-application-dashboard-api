class AddDocSubjectToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :docsubject, :string
  end
end
