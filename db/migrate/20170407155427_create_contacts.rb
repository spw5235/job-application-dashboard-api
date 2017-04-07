class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.references :user, foreign_key: true
      t.string :first_name
      t.string :last_name
      t.string :full_name
      t.string :nickname
      t.string :company_name
      t.string :job_title
      t.string :email
      t.string :phone
      t.string :website
      t.string :notes

      t.timestamps
    end
  end
end
