class DropReminders < ActiveRecord::Migration[5.0]
  def change
    drop_table :reminders do |t|
      t.string   :status_type
      t.string   :subject
      t.string   :details
      t.date     :due_date
      t.boolean  :archive
      t.datetime :created_at,  null: false
      t.datetime :updated_at,  null: false
    end
  end
end
