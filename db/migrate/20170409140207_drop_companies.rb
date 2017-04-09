# frozen_string_literal: true
class DropCompanies < ActiveRecord::Migration[5.0]
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

    drop_table :companies do |t|
      t.string   :name
      t.string   :location
      t.string   :url
      t.string   :note
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
      t.integer  :user_id
      t.boolean  :action_required
      t.boolean  :pending, default: false
    end
  end
end
