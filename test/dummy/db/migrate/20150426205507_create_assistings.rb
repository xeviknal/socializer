class CreateAssistings < ActiveRecord::Migration
  def change
    create_table :assistings do |t|
      t.integer :id
      t.integer :event_id
      t.integer :user_id

      t.timestamps
    end
  end
end
