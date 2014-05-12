class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
      t.string :name
      t.integer :issue

      t.timestamps
    end
	add_index :articles, [:magazine_id, :created_at]
  end
end
