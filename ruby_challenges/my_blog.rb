# CREATE A SIMPLE BLOG - Skillcrush lesson challenge
# Coded by Laura Rocha Prado

# Parent class Blog, that will keep track of how 
# many blog posts you have created, and what to do with them.
class Blog
	# Set counter for number of posts created
	@@total_posts = 0
	# Start array to store posts created
	@@post_collection = []

end

# Blueprint for each BlogPost object with
# title, content, publish date, author
class BlogPost < Blog
# Use attribute accessor method to generate getter and setter
	# functions to each attribute easily
	attr_accessor :title, :content, :publish_date, :author

	# Method do create new post or not
	def new_post
		# Prompt user for new post
		puts "Do you want to create another blog post? [Y/N]"
		create_new = gets
		if (create_new.chomp.downcase == "y")
			post = Blog.new
			puts "What's your post title?"
			self.title = gets
			puts "Write your blog content."
			self.content = gets
			puts "Who are you?"
			self.author = gets
			self.publish_date = Time.now
			puts "Blog post was created."
			puts "Title: #{title} #{content} Published by #{author} Publication date: #{publish_date}."
		else
			puts "No new post added."
		end

	## Method to add post to @@post_collection array
	def post_save(post)
		@@post_collection << post

		## Increments post count
		@@total_posts += 1
	end
end

end

new_post
