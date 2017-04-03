class AddCompanyRefToStatuses < ActiveRecord::Migration[5.0]
  def change
    add_reference :statuses, :company, foreign_key: true
  end
end
