class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :gender
      t.text :body

      t.timestamps null: false
    end
  end
end
