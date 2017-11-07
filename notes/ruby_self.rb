class Post
  attr_accessor :title

  def replace_title(new_title)
    # cannot use title, as Ruby will assume we are creating
    # a new local variable called title
    self.title = new_title
    @title = new_title
  end

  def print_title
    puts title
  end
end

pst = Post.new
pst.title = "Stevie"
pst.replace_title("Wonder")
pst.print_title
