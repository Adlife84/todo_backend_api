class AddRoleToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :role, :string
  end
end
