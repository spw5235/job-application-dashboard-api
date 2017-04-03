class AddActionRequiredToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :action_required, :boolean
  end
end
