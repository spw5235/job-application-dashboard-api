class DropContacts < ActiveRecord::Migration[5.0]
  def change
    drop_table :contacts do |t|
      t.string   :first_name
      t.string   :last_name
      t.string   :nickname
      t.string   :job_title
      t.string   :email
      t.string   :phone
      t.string   :address
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end
  end
end
