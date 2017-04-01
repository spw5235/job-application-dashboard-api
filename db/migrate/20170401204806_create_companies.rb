class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :location
      t.string :url
      t.string :note

      t.timestamps
    end
  end
end
