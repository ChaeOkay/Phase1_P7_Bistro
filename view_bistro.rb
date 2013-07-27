require 'csv'
require 'pry'

class BistroView
  class << self

    def render(msg, args = nil)
      args.nil? ? send(msg) : send(msg, args)
    end

    def break_line
      "*" * 50
    end

    def read_one(recipe)
      puts break_line
      puts "#{recipe.sorted_id} - #{recipe.name}"
      puts "#{recipe.description}"
      puts
      puts "ingredients:"
      puts "#{recipe.ingredients}"
      puts
      puts "Preparation Instructions:"
      puts "#{recipe.directions}"
      puts
    end

    def read_all(recipes)
      puts break_line
      recipes.each do |hash|
        puts "#{hash[:id]}\. #{hash[:name]}"
      end
      puts
    end

    # Displays when ARGV is nil
    def error
      puts break_line
      puts "I'm sorry I don't understand!"
      puts
      puts "please use one of the following commands:"
      puts "ruby bistro.rb list"
      puts "ruby bistro.rb show (list_number)"
      puts
    end

  end
end
