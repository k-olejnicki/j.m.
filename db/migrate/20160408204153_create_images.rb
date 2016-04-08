class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :admin_id

      t.timestamps null: false
    end
    add_index :images, :admin_id
  end
end
