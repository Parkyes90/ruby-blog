class AddUserFields < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :email, :string
    remove_column :users, :string
  end
end
