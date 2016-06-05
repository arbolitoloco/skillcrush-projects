# Create your first class (Refactored v 2.0)

class Craft
	attr_accessor :name, :material, :difficulty, :popularity
end

class Sewing < Craft
	attr_accessor :fabric
end

class Scrapbooking < Craft
	attr_accessor :cutting_tool
end

my_quilt = Sewing.new
my_quilt.name = "My First Quilt"
my_quilt_name = my_quilt.name
my_quilt.fabric = "cotton"
my_quilt_fabric = my_quilt.fabric
my_quilt.popularity = "very popular"
my_quilt_popularity = my_quilt.popularity

my_album = Scrapbooking.new
my_album.name = "Our trip to Philadelphia"
my_album_name = my_album.name
my_album.cutting_tool = "Silhouette Cameo"
my_album_cutting_tool = my_album.cutting_tool
my_album.material = "medium weight paper"
my_album_material = my_album.material

puts my_quilt.inspect
puts my_album.inspect

puts "This project is called #{my_quilt_name}. It is made with 
#{my_quilt_fabric}, and is a #{my_quilt_popularity} craft."
puts "This project is called #{my_album_name}, and it is made with 
#{my_album_material}, using the #{my_album_cutting_tool}."