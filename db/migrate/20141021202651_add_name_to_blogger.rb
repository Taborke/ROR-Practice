class AddNameToBlogger < ActiveRecord::Migration
  def change
      add_column :bloggers, :name, :string
  end
end
