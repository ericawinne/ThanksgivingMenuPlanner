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
    @recipe = Recipe.new(recipe_params)
    @ingredients = Ingredient.all
    if @recipe.save
      redirect_to recipes_path
    else
      render :new
    end
  end

  def edit 
    @recipe = Recipe.find(params[:id])
    @ingredients = Ingredient.all
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update(recipe_params)
      redirect_to recipes_path
    else
      render :edit
    end
  end

  def destroy
    Recipe.find(params[:id]).destroy
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:id, :name, :image, :instructions, :user_id, ingredient_ids: [], ingredients_attributes: [:name])
  end

end

#nested attr for name 
#recipe model 
#create or find by for recipe name 

#drop down for find recipe