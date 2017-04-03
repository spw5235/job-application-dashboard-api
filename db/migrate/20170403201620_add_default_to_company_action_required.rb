# frozen_string_literal: true

class AddDefaultToCompanyActionRequired < ActiveRecord::Migration[5.0]
  def change
    change_column :companies, :action_required, :boolean, default: false
  end
end
