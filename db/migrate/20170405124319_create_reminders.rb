class CreateReminders < ActiveRecord::Migration[5.0]
  def change
    create_table :reminders do |t|
      t.string :reminder_type
      t.string :reminder_subject
      t.string :reminder_details
      t.date :reminder_date
      t.boolean :reminder_archive
      t.date :reminder_compl_date

      t.timestamps
    end
  end
end
