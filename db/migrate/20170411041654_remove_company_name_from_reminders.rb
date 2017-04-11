class RemoveCompanyNameFromReminders < ActiveRecord::Migration[5.0]
  def change
    remove_column :reminders, :company_name, :string
  end
end
