class CreateArticlesTable < ActiveRecord::Migration
  def up
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.integer :user_id
      t.timestamps
    end
  end

  def down
    drop_table :articles
  end
end
