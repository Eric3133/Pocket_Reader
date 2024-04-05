class Post
  attr_reader :title, :author, :path, :content
  def initialize(attrs = {})
    @title = attrs[:title]
    @path = attrs[:path]
    @content = attrs[:content]
    @author = attrs[:author]
    @read = attrs[:read] == "true"
  end

  def read?
    @read
  end

  def mark_as_read!
    @read = true
  end

  def to_s
    "#{title} (#{author}  #{content})"
  end
end
