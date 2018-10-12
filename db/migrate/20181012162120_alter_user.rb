class AlterUser < ActiveRecord::Migration[5.2]
  def up
    rename_table('users' , 'admin_users')
    add_column('admin_users', 'user_name', :string, limit: 25, after: 'email')
    change_column('admin_users', 'email', :string, limit: 100)
    rename_column('admin_users', 'password', 'hashed_password')
    puts '*** Adding an index ***'
    add_index('admin_users', 'user_name')
  end

  def down
    puts '*** Removing an index ***'
    remove_index('admin_users', 'user_name')
    rename_column('admin_users', 'hashed_password', 'password')
    change_column('admin_users', 'email', :string, default: '', null: false)
    remove_column('admin_users', 'user_name')
    rename_table('admin_users' , 'users')
  end
end
