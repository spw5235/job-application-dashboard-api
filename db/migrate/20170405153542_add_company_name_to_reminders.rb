class AddCompanyNameToReminders < ActiveRecord::Migration[5.0]
  def change
    add_column :reminders, :company_name, :string
  end
end
