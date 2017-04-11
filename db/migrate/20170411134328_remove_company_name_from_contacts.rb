class RemoveCompanyNameFromContacts < ActiveRecord::Migration[5.0]
  def change
    remove_column :contacts, :company_name, :string
  end
end
