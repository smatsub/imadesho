class AddUserIdToHanjas < ActiveRecord::Migration
  def change
    add_column :hanjas, :user_id, :integer
  end
end
