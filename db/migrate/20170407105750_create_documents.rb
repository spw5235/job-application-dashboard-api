class CreateDocuments < ActiveRecord::Migration[5.0]
  def change
    create_table :documents do |t|
      t.string :doctype
      t.string :doctext
      t.string :docurl
      t.integer :company_ref_id
      t.string :company_name
      t.integer :contact_ref_id
      t.string :contact_ref_name

      t.timestamps
    end
  end
end
