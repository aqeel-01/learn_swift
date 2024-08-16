import Cocoa



enum Ingredient : String
{
    case chicken = " free Range Chicken"
    case lettuce = "Romaine lettuce "
    case croutons = " Salted Croutons "
}

let ingredient = Ingredient.chicken


switch ingredient
{
    
case .chicken:
    print("our meals taste better with \(ingredient.rawValue) to rise quality")

case .lettuce:
    print("we use \(ingredient.rawValue) that has the richest flavour from all the lettuces")

case .croutons:
    print("our \(ingredient.rawValue) make sure we don't use additional salt in our salads")
    
    
}



enum RecipeInformation
{
    case allergens(information: String)
}

let recipeInformation = RecipeInformation.allergens(information: "peanuts,Milk,Gluten")


switch recipeInformation
{
case .allergens(let information) :
    print(" The meal includes the following allergens : \(information)")
}
