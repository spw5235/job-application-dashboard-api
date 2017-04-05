class DropConversations < ActiveRecord::Migration[5.0]
  def change
    drop_table :conversations do |t|
      t.string   :contact_name
      t.string   :convo_type
      t.string   :convo_subject
      t.string   :convo_docs
      t.string   :convo_notes
      t.datetime :created_at,    null: false
      t.datetime :updated_at,    null: false
    end
  end
end
