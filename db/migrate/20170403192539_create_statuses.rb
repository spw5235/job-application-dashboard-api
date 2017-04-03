class CreateStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :statuses do |t|
      t.string :type
      t.string :subject
      t.string :details
      t.date :due_date
      t.boolean :archive
      t.date :date_completed

      t.timestamps
    end
  end
end
