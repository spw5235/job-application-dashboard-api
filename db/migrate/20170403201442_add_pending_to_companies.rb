class AddPendingToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :pending, :boolean
  end
end
