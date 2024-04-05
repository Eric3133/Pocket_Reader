require_relative "post"
require_relative "repository"

attrs = {
  path: 'sss',
  title: 'gg',
  content: 'sssss',
  author: 'eric',
  read: "false"
}
post = Post.new(attrs)

p post.read?
p post.mark_as_read!

repository = Repository.new("lib/post.cav")
repository.load_csv
