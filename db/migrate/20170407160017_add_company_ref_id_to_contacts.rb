class AddCompanyRefIdToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :company_ref_id, :integer
  end
end
