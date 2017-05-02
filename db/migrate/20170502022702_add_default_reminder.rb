class AddDefaultReminder < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :default_reminder, :boolean, :default => true
  end
end
