class AddColorToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :color, :string
  end
end
