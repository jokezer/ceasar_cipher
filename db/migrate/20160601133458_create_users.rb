class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :url_alias

      t.timestamps null: false
    end

    add_index :users, :url_alias, unique: true
  end
end
