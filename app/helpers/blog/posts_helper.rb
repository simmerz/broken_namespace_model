module Blog
  module PostsHelper
    def link_to_post(label, post, options, &block)
      if block_given?
        link_to blog_post_path(post.created_at.year, post.created_at.month, post.created_at.day, post.id), options, &block
      else
        link_to label, blog_post_path(post.created_at.year, post.created_at.month, post.created_at.day, post.id), options
      end
    end
  end
end
