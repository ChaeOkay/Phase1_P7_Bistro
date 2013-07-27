#######################################

# To run the P7 program:

# $ ruby bistro.rb

#######################################

# PSEUDOCODE

# STARTING PROGRAM
# bistro.rb opens from the terinal with one or two argvs
#   The first argv is the crud function, the second is the recipe id

# SEQUENCE
# 1. csv file opened and parsed, so that each recipe is it's own object
#    PARSING
#    each recipe knows
#      - csv id
#      - name
#      - description
#      - ingredients
#      - directions

#     SORTING
#     Bistro creates a library of recipe objects
#       - bistro sorts the recipes
#       - bistro assigns a sorted_id (key) with the object (value)

# 2. ARGVSs are evaluated
#     EVALUATION
#        - ARGV[0] will evaluate what was passed (crud command)
#        - ARGV[1] will indicates if a sorted_id was given
#        - will call appropriate receipt data for display

# 3. ARGV's are called
#     DISPLAY
#        - will be based on crud command evaluation
#        - will format printing


########################################
# Load recipes from a file
# List all recipes
# Display a recipes name, description, and ingredients

#list:

# 1. Kale Burger
# 2. Poodle Cake (For your puppy!)
# 3. Peanut Butter Coffee Brownie

#single recipe:

# 1 - Kale Burger
# The Kale Burger is one of our best selling dishes!
# it combines the nutritional value of kale with
# the taste of cow!

# Ingredients:
# Kale, Cow

# Preperation Instructions:
# Preheat the oven to 500 degrees. Put in a cow. Wait 10 minutes.
# Put in some kale. Take out cow and kale. Put on bun Serve HOT!
#################

