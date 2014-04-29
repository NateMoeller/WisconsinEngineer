class CreateMagazines < ActiveRecord::Migration
  def change
    create_table :magazines do |t|
      t.string :name
      t.integer :issue

      t.timestamps
    end
  end
end
