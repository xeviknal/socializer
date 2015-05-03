class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end
end
