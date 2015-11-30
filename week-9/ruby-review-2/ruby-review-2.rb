# Drawer Debugger

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.

# Original Code

class Drawer

	attr_reader :contents

# Are there any more methods needed in this class?

	def initialize
		@contents = []
		@open = true
	end

	def open
		@open = true
	end

	def close
		@open = false
	end
	
	def add_item(item)
		@contents << item
	end
	
	def remove_item(item = @contents.pop) #what is `#pop` doing?
		@contents.delete(item)
		#@contents.each {|x| p x.type}
		#puts "pop off #{item.type}"
	end
	
	def dump  # what should this method return?
		puts "Your drawer is empty."
		return @contents = []
	end

	def view_contents
		puts "The drawer contains:"
		@contents.each {|silverware| puts "- " + silverware.type }
	end
end

class Silverware
	attr_reader :type

# Are there any more methods needed in this class?

	def initialize(type, clean = true)
		@type = type
		@clean = clean
	end
	
	def eat
		puts "eating with the #{type}"
		@clean = false
	end
	
	def clean
		return @clean
	end
	
	def clean_silverware
		return @clean = true
	end

end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error.
spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)
puts "I added #{spoon.type} and it's #{spoon.clean}"

raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
spoon.eat
puts spoon.clean #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE






# Reflection
=begin

Back to Ruby, from JS, and I feel a bit out of depth with it. There seem to be 
a ton of fussy little methods inside the classes here. Are they all necessary? 
Is there a way to streamline some of this? Is it good to be so fragmented? I'm not
sure really. I need to get back into the classes with Ruby and practice some more.

One thing I really don't get. Why does spoon.type work, but spoon.clean does not? I 
had to create a method for clean to make the driver code work. They both seem to be 
instance variables on that item. 

=end