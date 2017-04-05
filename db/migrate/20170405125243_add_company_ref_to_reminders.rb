class AddCompanyRefToReminders < ActiveRecord::Migration[5.0]
  def change
    add_reference :reminders, :company, foreign_key: true
  end
end
