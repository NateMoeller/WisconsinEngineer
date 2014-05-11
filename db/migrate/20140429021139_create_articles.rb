class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author
      t.string :email
	  t.string :title
      t.text :content
	  t.integer :user_id
	  t.integer :magazine_id

      t.timestamps
    end
	add_index :articles, [:magazine_id, :created_at]
  end
end
