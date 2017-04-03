class AddJobRefToStatuses < ActiveRecord::Migration[5.0]
  def change
    add_reference :statuses, :job, foreign_key: true
  end
end
