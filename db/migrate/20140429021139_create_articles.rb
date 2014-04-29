class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author
      t.string :email
      t.text :content
	  t.integer :user_id
	  t.integer :magazine_id

      t.timestamps
    end
  end
end
