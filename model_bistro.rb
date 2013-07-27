class BistroModel
  class << self

    def recipes
      @recipes
    end

    def read(id)
      @recipes[id-1]
    end

    def ids_and_names
      formatted = []
      @recipes.each { |entry| formatted << Hash[entry.all_names] }
      formatted
    end

    # Build for parsing CSV file
    def build!(recipe_data)
      @recipes = []
      recipe_data.each { |args| @recipes << RecipeModel.new(args) }
      sort
      assign_sort_id
    end

    def sort
      @recipes.sort_by! { |item| item.name }
    end

    def assign_sort_id
      @recipes = @recipes.each_with_index { |recipe, index| recipe.sorted_id = index+1}
    end

  end
end
