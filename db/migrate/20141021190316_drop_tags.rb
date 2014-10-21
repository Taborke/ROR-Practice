class DropTags < ActiveRecord::Migration
  def up
    drop_table :tags
  end

  def down

    create_table :tags do |t|
      t.references :entry, index: true
      t.string :name

      t.timestamps
    end

  end

end
