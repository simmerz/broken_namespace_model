class CreateBlogPosts < ActiveRecord::Migration[5.0]
  def change
    create_table :blog_posts do |t|
      t.string :title
      t.string :subtitle
      t.text :description
      t.string :author
      t.string :header_image
      t.text :post

      t.timestamps
    end
  end
end
