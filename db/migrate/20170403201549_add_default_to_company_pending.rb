class AddDefaultToCompanyPending < ActiveRecord::Migration[5.0]
  def change
    change_column :companies, :pending, :boolean, default: false
  end
end
