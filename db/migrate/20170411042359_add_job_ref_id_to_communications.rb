class AddJobRefIdToCommunications < ActiveRecord::Migration[5.0]
  def change
    add_column :communications, :job_ref_id, :integer
  end
end
