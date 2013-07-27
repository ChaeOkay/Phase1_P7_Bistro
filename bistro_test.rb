require_relative 'controller_bistro'

require 'rspec'

describe RecipeModel do
  args = {id: 1,
              name: "Recipe1",
              description: "A good recipe",
              ingredients: "A well thoughout plan",
              directions: "Shake well"}
  let(:recipe) { RecipeModel.new(args) }

  it 'should render a name' do
    recipe.name.should == "Recipe1"
  end
end


describe BistroModel do

  args1 = {id: 2,
              name: "Dessert",
              description: "Tasty Morsels",
              ingredients: "sugar",
              directions: "whip"}
  args2 = {id: 1,
              name: "Good One",
              description: "A good recipe",
              ingredients: "A well thoughout plan",
              directions: "Shake well"}

  args3 = {id: 2,
              name: "Carrot Grater",
              description: "A second recipe",
              ingredients: "Carrots",
              directions: "Grate"}

  describe 'adding' do
    it 'should add recipes' do
      BistroModel.build!([args1, args2, args3])
      BistroModel.recipes.size.should == 3
    end

    it 'should sort recipes by name' do
      BistroModel.sort
      recipes = BistroModel.recipes
      recipes.first.name.should == "Carrot Grater"
      recipes.last.name.should == "Good One"
    end

    it 'should get a recipe by sorted_id' do
      BistroModel.read(2).name.should == "Dessert"
    end
  end
end


describe ArgvController do
  it 'should parse file as a csv table' do
    ArgvController.parse_csv('recipes.csv').should be_a(CSV::Table)
  end

  it 'should puts a string' do
    ArgvController.show(2).should be_nil
  end
end
