class AddColorToMembers < ActiveRecord::Migration[6.0]
  def change
    add_column :members, :Color, :string
  end
end
