
# Solution provided by Skillcrush
## My comments marked with double hashtags

## Order of things to be coded:
## 1. Class Blog with: post counter, post array, methods
## to return array with posts, add post to array and count it,
## read all posts in array (optional?).
## 2. Class BlogPost with: 

## Class Blog to store all posts and count them
class Blog
  ## Array to store posts
  @@all_blog_posts = []

  ## Counter for posts
  @@num_blog_posts = 0
 
  ## Method to return array with posts
  def self.all
    @@all_blog_posts
  end
  
  ## Method to add? 
  def self.add(thing)
    ## "array << object" pushes object to end of array
    @@all_blog_posts << thing

    ## Increments count of posts, one at a time
    @@num_blog_posts += 1
  end
 
  ## Method that reads blog posts
  def self.publish
    ## Iterates through post array and puts attributes
    @@all_blog_posts.each do |post|
      puts "Title:\n #{post.title}"
      puts "Body:\n #{post.content}"
      puts "Publish Date:\n #{post.created_at}"
    end
  end
 
end
 
## BlogPost is a child of Blog Class 
class BlogPost < Blog
  
  ## Self here refers to what?? Is method "create" being
  ## defined here? At the same time as it is called? This
  ## is odd.
  def self.create
    ## Is "new" a method here?
    post = new

    ## Prompts user for attributes for "post"
    puts "Name your blog post:"
    post.title = gets.chomp
    puts "Your blog post content:"
    post.content = gets.chomp
    post.created_at = Time.now

    ## Calls "save" method for "post". Where is "save" defined?
    post.save
    puts "Do you want to create another post? [Y/N]"
    # Calls method "create" if answer is yes
    create if gets.chomp.downcase == 'y'
 #returns if not ‘y’ and stops the rest of the script from running. otherwise, continues to run ‘create’ method.
  end
  
  ## Defines attributes for class BlogPost

  ## Getter method for title 
  def title
    @title
  end
  
  ## Setter method for title
  def title=(title) # a setter method always takes an argument
    @title = title # don't forget to set the instance variable
  end
  
  ## Getter method for publication date
  def created_at
    @created_at
  end
  
  ## Setter method for publication date
  def created_at=(created_at)
    @created_at = created_at
  end
 
  ## Getter method for content 
  def content
    @content
  end
 
  ## Setter method for content
  def content=(content)
    @content = content
  end
 
  ## "Save" method that does what??
  def save
    ## Is "add" a built in function?
    BlogPost.add(self)
  end
 
end

## Calls method "create" for BlogPost
BlogPost.create

## Callas "all" method to show all stored posts in array
## "all" method is created inside Blog, inherited by BlogPost
all_blog_posts = BlogPost.all

## Inspect array
puts all_blog_posts.inspect

## Calls "publish" method for class BlogPost
## "publish" method is created inside Blog, inherited by BlogPost
BlogPost.publish