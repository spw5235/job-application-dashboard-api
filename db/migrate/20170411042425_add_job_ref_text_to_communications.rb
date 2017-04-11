class AddJobRefTextToCommunications < ActiveRecord::Migration[5.0]
  def change
    add_column :communications, :job_ref_text, :string
  end
end
