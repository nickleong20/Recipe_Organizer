# Recipe Organizer

# Create a data frame to store recipes
recipes <- data.frame(
  recipe_name = character(),
  ingredients = character(),
  instructions = character(),
  stringsAsFactors = FALSE
)

# Function to add a new recipe
add_recipe <- function(recipe_name, ingredients, instructions) {
  new_recipe <- data.frame(
    recipe_name = recipe_name,
    ingredients = ingredients,
    instructions = instructions,
    stringsAsFactors = FALSE
  )
  recipes <<- rbind(recipes, new_recipe)
}

# Function to search recipes by ingredient
search_recipe_by_ingredient <- function(ingredient) {
  matching_recipes <- recipes[grepl(ingredient, recipes$ingredients, ignore.case = TRUE), ]
  return(matching_recipes)
}

# Example usage
add_recipe("Pancakes", "Flour, Milk, Eggs, Sugar", "1. Mix ingredients, 2. Cook on a griddle")
add_recipe("Spaghetti Bolognese", "Spaghetti, Ground beef, Tomato sauce, Onion, Garlic", "1. Cook spaghetti, 2. Brown ground beef, 3. Add sauce, onion, and garlic, 4. Simmer")

# Search for recipes with "Milk" as an ingredient
matching_recipes <- search_recipe_by_ingredient("Milk")

# Print the matching recipes
print(matching_recipes)

# Update column names
colnames(recipes) <- c("Recipe Name", "Ingredients", "Instructions")
colnames(matching_recipes) <- c("Recipe Name", "Ingredients", "Instructions")