class AddAdminIdToValues < ActiveRecord::Migration
  def change
    add_column :values, :admin_id, :integer
  end
end
