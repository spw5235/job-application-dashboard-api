class RemoveContactRefNameFromCommunications < ActiveRecord::Migration[5.0]
  def change
    remove_column :communications, :contact_ref_name, :string
  end
end
