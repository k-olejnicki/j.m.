class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :category
      t.text :description

      t.timestamps null: false
    end
  end
end
