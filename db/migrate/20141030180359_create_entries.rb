class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :feeling
      t.text :blurb

      t.timestamps
    end
  end
end
