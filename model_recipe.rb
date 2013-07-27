class RecipeModel

  attr_accessor :id, :name, :description, :ingredients, :directions, :sorted_id
  def initialize(args)
    @csv_id = args[:id]
    @name = args[:name]
    @description  = args[:description]
    @ingredients = args[:ingredients]
    @directions = args[:directions]
    @sorted_id = 0
  end

  def all_names
    { id: @sorted_id,  name: @name}
  end
end
