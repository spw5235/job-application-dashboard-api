# frozen_string_literal: true

class RemoveCompanyIdFromReminders < ActiveRecord::Migration[5.0]
  def change
    remove_index(:reminders, :name => 'index_reminders_on_company_id')
  end
end
