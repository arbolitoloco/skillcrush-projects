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

my_craft = Craft.new
my_craft.set_name = "patchwork"
my_craft.set_material = "fabric"
my_craft.set_difficulty = "hard"
my_craft.set_popularity = "highly popular"
my_craft_name = my_craft.get_name
my_craft_material = my_craft.get_material
my_craft_difficulty = my_craft.get_difficulty
my_craft_popularity = my_craft.get_popularity
puts "#{my_craft_name.capitalize} is a #{my_craft_popularity} and #{my_craft_difficulty} craft, made with #{my_craft_material}."