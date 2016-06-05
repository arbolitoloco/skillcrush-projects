# Create your first class

class Craft
	def set_name=(craft_name)
		@name = craft_name
	end

	def get_name
		return @name
	end

	def set_material=(craft_material)
		@material = craft_material
	end

	def get_material
		return @material
	end

	def set_difficulty=(craft_difficulty)
		@difficulty = craft_difficulty
	end

	def get_difficulty 
		return @difficulty
	end

	def set_popularity=(craft_popularity)
		@popularity = craft_popularity
	end

	def get_popularity
		return @popularity
	end
end

class Sewing < Craft
	def set_fabric=(fabric)
		@fabric = fabric
	end

	def get_fabric
		return @fabric
	end
end

class Scrapbooking < Craft
	def set_cutting_tool=(cutting_tool)
		@cutting_tool = cutting_tool
	end

	def get_cutting_tool 
		return @cutting_tool
	end
end

my_quilt = Sewing.new
my_quilt.set_name = "My First Quilt"
my_quilt_name = my_quilt.get_name
my_quilt.set_fabric = "cotton"
my_quilt_fabric = my_quilt.get_fabric
my_quilt.set_popularity = "very popular"
my_quilt_popularity = my_quilt.get_popularity

my_album = Scrapbooking.new
my_album.set_name = "Our trip to Philadelphia"
my_album_name = my_album.get_name
my_album.set_cutting_tool = "Silhouette Cameo"
my_album_cutting_tool = my_album.get_cutting_tool
my_album.set_material = "medium weight paper"
my_album_material = my_album.get_material

puts my_quilt.inspect
puts my_album.inspect

puts "This project is called #{my_quilt_name}. It is made with 
#{my_quilt_fabric}, and is a #{my_quilt_popularity} craft."
puts "This project is called #{my_album_name}, and it is made with 
#{my_album_material}, using the #{my_album_cutting_tool}."