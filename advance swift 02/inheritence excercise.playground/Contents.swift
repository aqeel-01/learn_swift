import Cocoa


//inheritence excercise


class Dish
{
  private  let ingredients: [String]
    
  private  let name : String
  
    init(ingredients: [String], name: String) {
        self.ingredients = ingredients
        self.name = name
    }
   
    
    func printInfo()
    {
        
        print(name)
        print(ingredients)
    }
}


final class AppetizerDish: Dish
{
    
    
    override func printInfo() {
        
        print("Appetizer")
        super.printInfo()
    }
}


final class MainDish: Dish
{
    
}


for _ in 0..<5
{
    let randomNumber = Int.random(in: 0...1)
    let dish: Dish
    if randomNumber == 0
    {
        dish = AppetizerDish(
            ingredients: [
                "margherita",
                " flatbread "
            ],
            name: "Margherita Flatbread"
            
        )
        
    }
    else
    {
        dish = MainDish(ingredients: ["Spaghetti","tomato sauce"], name: "super spaghetti")
    }
    
    if let appetizerDish = dish as? AppetizerDish
    {
        appetizerDish.printInfo()
    }
    
    if dish is MainDish
    {
        print("Main Dish!")
    }
}
