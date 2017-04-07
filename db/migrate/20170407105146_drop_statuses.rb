class DropStatuses < ActiveRecord::Migration[5.0]
  def change
    drop_table :statuses do |t|
      t.string   :status_type
      t.string   :subject
      t.string   :details
      t.date     :due_date
      t.boolean  :archive
      t.date     :date_completed
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.integer  :user_id
      t.integer  :company_id
      t.integer  :job_id
    end
  end
end
