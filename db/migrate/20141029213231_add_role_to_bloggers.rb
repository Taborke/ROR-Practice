class AddRoleToBloggers < ActiveRecord::Migration
  def change
    add_column :bloggers, :role, :string
  end
end
