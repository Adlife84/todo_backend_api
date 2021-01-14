class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :img
      t.string :first_name
      t.string :last_name
      t.integer :tel
      t.string :email
      t.boolean :status

      t.timestamps
    end
  end
end
