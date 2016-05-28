class CreateValues < ActiveRecord::Migration
  def change
    create_table :values do |t|
      t.integer :price_in

      t.timestamps null: false
    end
  end
end
