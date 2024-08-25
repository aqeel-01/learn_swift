import Cocoa



//polymorphism

//inherit base class methods to perfrom different tasks in the subclass

//transforming the base class at the subclass level

//pro 01

//superclass syntax

class ParentClass
{
    func method()
    {
        
    }
}


class childClass: ParentClass
{
    override func  method()
    {
        super.method()
    }
}


// pro 02

class Spaghetti
{
    var ingredinets: Set<String> = [
    "pasta",
    "tomato sauce"
    
    ]
    
    func fetchIngredinet()
    {
        print("Ingredinets: \(ingredinets)")
    }
}

class SpaghettiMeatball: Spaghetti
{
    override func fetchIngredinet() {
        
        print("before")
        super.fetchIngredinet() //use of inherited property with help of super
        print("After")
        print("Special spaghetti meatball ingredients")
    }
}


let spaghetti = Spaghetti()
let spaghettiMeatball = SpaghettiMeatball()
spaghetti.fetchIngredinet()
spaghettiMeatball.fetchIngredinet()
