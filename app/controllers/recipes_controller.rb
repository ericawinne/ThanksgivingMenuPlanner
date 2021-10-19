class RecipesController < ApplicationController
  
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @ingredients = Ingredient.all
  end

  def create
    recipe = Recipe.new(recipe_params)

    if recipe.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  def edit 
    @recipe = Recipe.find(params[:id])
    # @ingredients = Ingredient.all
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update(recipe_params)
      redirect_to recipes_path
    else
      render :edit
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :instructions, :recipe_id, ingredient_ids: [])
  end

end

#nested attr for name 
#recipe model 
#create or find by for recipe name 

#drop down for find recipe