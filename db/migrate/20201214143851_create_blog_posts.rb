class CreateBlogPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :body
      t.references :user

      t.timestamps
    end
    add_index :blog_posts, :title, unique: true
  end
end
