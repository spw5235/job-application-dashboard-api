class AddContactRefTextToCommunications < ActiveRecord::Migration[5.0]
  def change
    add_column :communications, :contact_ref_text, :string
  end
end
