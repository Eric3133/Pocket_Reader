class View
  def display(posts)
    posts.each_with_index do |post, index|
      status = post.read? ? "[x]" : "[]"
      puts "#{index + 1}. #{status} - #{post.title} (#{post.author})"
    end
  end

  def ask_user_for(stuff)
    puts "#{stuff.capitalize}?"
    gets.chomp
  end

  def ask_user_for_index
    puts "what index do you want?"
      gets.chomp.to_i - 1
  end

  def display_content(post)
    puts post
  end
end
