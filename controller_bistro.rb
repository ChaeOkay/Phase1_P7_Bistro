require 'csv'
require_relative 'model_recipe'
require_relative 'model_bistro'
require_relative 'view_bistro'

class ArgvController
  class << self

    def run!(file)
      parse_csv(file)
      create_bistro_recipes
      send_command
    end

    def show(id)
      BistroView.render(:read_one, BistroModel.read(id.to_i))
    end

    def list
      BistroView.render(:read_all, BistroModel.ids_and_names)
    end



    # methods below are unprotected to allow rspec to test functionality
    def send_command
      return BistroView.error if ARGV[0].nil?
      ARGV[1].nil? ? (send ARGV[0]) : (send ARGV[0], ARGV[1])
    end

    def parse_csv(file)
      @table = CSV.table(file)
    end

    def create_bistro_recipes
      recipe_data = []
      @table.each do |row|
        recipe_data << (Hash[row])
      end
      BistroModel.build!(recipe_data)
    end

  end
end
