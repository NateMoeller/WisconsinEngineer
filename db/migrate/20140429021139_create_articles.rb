class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :author
      t.string :email
      t.text :content
	  t.int :user_id

      t.timestamps
    end
  end
end
