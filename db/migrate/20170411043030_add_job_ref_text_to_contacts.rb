class AddJobRefTextToContacts < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :job_ref_text, :string
  end
end
