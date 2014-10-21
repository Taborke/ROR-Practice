class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :feeling
      t.text :blurb
      t.belongs_to :blogger, index: true

      t.timestamps
    end
  end
end
