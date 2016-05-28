class AddAdminIdToEducations < ActiveRecord::Migration
  def change
    add_column :educations, :admin_id, :integer
  end
end
