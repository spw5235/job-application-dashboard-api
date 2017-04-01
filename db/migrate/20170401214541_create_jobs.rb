class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.date :posting_date
      t.string :post_url
      t.integer :salary
      t.string :responsibility
      t.string :requirement
      t.date :deadline
      t.boolean :action_required
      t.boolean :pending

      t.timestamps
    end
  end
end
