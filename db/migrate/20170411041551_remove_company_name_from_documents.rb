class RemoveCompanyNameFromDocuments < ActiveRecord::Migration[5.0]
  def change
    remove_column :documents, :company_name
  end
end
