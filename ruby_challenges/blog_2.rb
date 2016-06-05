# CREATE A SIMPLE BLOG - Skillcrush lesson challenge
# Coded by Laura Rocha Prado

# Step 1. Parent class Blog, that will keep track of how 
# many blog posts you have created, and what to do with them.

class Blog
	# Set counter for number of posts created
	@@total_posts = 0
	# Start array to store posts created
	@@post_collection = []

	# Method asking user if he wants to write a new post
	def self.ask_new
	    # Prompt user for new post
	    puts "Do you want to create another blog post? [Y/N]"
    	create_new = gets

		# Creates new blog post using new_post method in BlogPost
		if (create_new.chomp.downcase == "y")
			BlogPost.new_post
		else
			puts "No new post added."
			puts "Post count: #{@@total_posts}"
			self.post_collection_read
		end
	end

	# Method that adds post to post_collection array
	def self.post_save(post)
		@@post_collection << post

		# Increments post count
		@@total_posts += 1
	end

	# Method that reads post_collection array
	def self.post_collection_read
		@@post_collection. each do |post|
			puts "Title: #{post.title}"
			puts "Content: #{post.content}"
			puts "Published by #{post.author}"
			puts "Publication date: #{post.publish_date}."
			puts "****************************"
		end
	end
end

# Step 2. Child class BlogPost, which is a blueprint for each 
# BlogPost object with title, content, publish date, author
class BlogPost < Blog
	# Use attribute accessor method to generate getter and setter
	# functions to each attribute easily
	attr_accessor :title, :content, :author, :publish_date

	# Method do create new post or not
	def self.new_post
		post = new
		puts "What's your post title?"
		post.title = gets
		puts "Write your blog content."
		post.content = gets
		puts "Who are you?"
		post.author = gets
		post.publish_date = Time.now
		post_save(post)
		puts "Blog post was created."
		puts "Title: #{post.title}"
		puts "Content: #{post.content}"
		puts "Published by #{post.author}"
		puts "Publication date: #{post.publish_date}."
		puts "Post count = #{@@total_posts}"
		BlogPost.ask_new
	end
end

BlogPost.ask_new



