class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :user_id
      t.text :content
      t.integer :shift

      t.timestamps null: false
    end

    add_index :messages, :user_id, unique: true
  end
end
