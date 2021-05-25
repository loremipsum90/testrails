class AddUserIdToJobposters < ActiveRecord::Migration[6.1]
  def change
    add_column :jobposters, :user_id, :integer
    add_index :jobposters, :user_id
  end
end
