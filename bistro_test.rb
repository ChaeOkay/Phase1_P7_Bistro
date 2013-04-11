require_relative('bistro')

bistro = Bistro.new
bistro.load_recipes('recipes.csv')

puts bistro.list_recipes
# The output should look like this:

# 1. Kale Burger
# 2. Poodle Cake (For your puppy!)
# 3. Peanut Butter Coffee Brownie
puts bistro.find_recipe_by_id(1)

# The output should look like this:

# 1 - Kale Burger
# The Kale Burger is one of our best selling dishes! 
# it combines the nutritional value of kale with
# the taste of cow!
#
# Ingredients:
# Kale, Cow
#
# Preperation Instructions:
# Preheat the oven to 500 degrees. Put in a cow. Wait 10 minutes Put in some
# kale. Take out cow and kale. Put on bun Serve HOT!

