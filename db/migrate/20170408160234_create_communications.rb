class CreateCommunications < ActiveRecord::Migration[5.0]
  def change
    create_table :communications do |t|
      t.date :c_date
      t.string :c_method
      t.string :c_subject
      t.string :c_details
      t.string :c_link
      t.string :c_notes
      t.references :user, foreign_key: true
      t.integer :contact_ref_id
      t.string :contact_ref_name

      t.timestamps
    end
  end
end
