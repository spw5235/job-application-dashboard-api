# frozen_string_literal: true

class AddCompanyRefIdToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :company_ref_id, :integer
  end
end
