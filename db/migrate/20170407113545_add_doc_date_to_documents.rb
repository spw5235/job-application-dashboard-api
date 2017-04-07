class AddDocDateToDocuments < ActiveRecord::Migration[5.0]
  def change
    add_column :documents, :docdate, :date
  end
end
