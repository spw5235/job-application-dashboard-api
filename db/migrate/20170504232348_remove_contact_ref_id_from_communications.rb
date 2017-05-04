class RemoveContactRefIdFromCommunications < ActiveRecord::Migration[5.0]
  def change
    remove_column :communications, :contact_ref_id, :integer
  end
end
