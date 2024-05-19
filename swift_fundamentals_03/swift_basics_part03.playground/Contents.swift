import UIKit


/* NOTE
  this module contains clousers
                       structures
                       class

*/



//functions
func greet(person:String) -> String
{
  let greeting = "hello" + person + "!"
    return greeting
}

print(greet(person:" anna"))
print(greet(person:" brian"))


//clousers
//means hidden they doesnt have a name

var myClosure = {() -> () in
print("my first closure")
    
    
}
myClosure()

var Myclosure = { (name:String) -> () in
print("hello \(name)")
}

Myclosure("Grace")

//return values
var max = {( num1:Int , num2:Int) -> Int in
    return num1 > num2 ? num1:num2
    
}

print("the maximum number between 1 and 6 is \(max(6,1))")


// using sorted with a function

func forwards(s1:String , s2:String) -> Bool
{
    return s1 > s2
}
let letters = ["H","J","X","Z","C"]

let sorted = letters.sorted(by: forwards)
print(sorted)
 


//sorted using closure
let letter =  ["H","J","X","Z","C"]
let myCollection = letter.sorted(by: {(s1:String, s2:String) -> Bool in
return s1 < s2
})
print(myCollection)


//shorthand arguments names

let Letter = ["H","J","X","Z","C"]
let MyCollection = Letter.sorted(by: {$0 < $1 })
print(MyCollection)


// more closure examples

//declaring a closure
var aClosure = { () -> Void in
    print("this is a closure")
}
aClosure()


//passing an argument
var argumentClosure = {
    (str:String) -> Void in
    print("hello \(str)")
}

argumentClosure("bertram")


//passing an argument and  returning a value to a closure

var maximum = {
    (num1 :Int , num2:Int) -> Int in
    return num1 > num2 ? num1 : num2
}
print("maximum value is \(maximum(1,7))")


//capturing a value in a closure

func updateValue() -> () -> Void
{
    let capturedValue = 10
    return {print(capturedValue)}
}

let captureClosure = updateValue()
captureClosure()

//passing a closure  as a function argument

let letterS = ["H","E","X","A"]
let my_collection = letterS.sorted(by: {(string1:String , string2: String) -> Bool in
    return string1 < string2
})

print(my_collection)


// structures
//value type (create's own unique  copy)


// simple structure
struct menuItem
{
    let name: String
    var price: Double
    
    func getInformation() -> String
    {
      return "\(name) : \(price)"
    }
}

//member wise intializer
let  superSpaghetti = menuItem(name:"super spaghetti" , price: 18.99)
print(superSpaghetti)


// struct using custom intializer method

struct MenuItem
{
    let name: String
    var price: Double
    
    func getInformation() -> String
    {
      return "\(name) : \(price)"
    }
    
    //custom intializer
    init(price: Double = 9.99 , name:String = "unknown")
    {
        self.price = price
        self.name = name
    }
    
}

// Create a MenuItem instance without specifying any values
let defaultMenuItem = MenuItem()
print(defaultMenuItem.getInformation()) // Output: unknown: 9.99




//let unreleasedMenuItem = MenuItem()
let affogato = MenuItem(name:"affogato")
let pricedMenuItem = MenuItem(price:12.90)
let superSpaghettio = MenuItem(price:17.99, name:"super spaghetti")

//print(unreleasedMenuItem.getInformation())
print(affogato.getInformation())
print(pricedMenuItem.getInformation())
print(superSpaghettio.getInformation())


//some more example's to understand structures

//01
struct Person {
    var name: String
    var age: Int
    var email: String?
    
    func greet() {
        print("Hello, my name is \(name) and I'm \(age) years old.")
    }
}
// Create an instance of Person
var person1 = Person(name: "John", age: 30, email: "john@example.com")

// Access properties
print(person1.name)  // Output: John
print(person1.age)   // Output: 30
print(person1.email ?? "No email provided")  // Output: john@example.com

// Call method
person1.greet()  // Output: Hello, my name is John and I'm 30 years old.


//02
struct Point
{
    var x: Double
    var y: Double
    
    func distance(to point: Point) -> Double
    {
        let deltaX = point.x - x
        let deltaY = point.y - y
        return sqrt(deltaX * deltaX + deltaY * deltaY)
        
    }
}

// Create instances of Point
let point1 = Point(x: 0, y: 0)
let point2 = Point(x: 3, y: 4)

// Access properties
print(point1.x)  // Output: 0
print(point1.y)  // Output: 0
print(point2.x)  // Output: 3
print(point2.y)  // Output: 4

// Call method
let distance = point1.distance(to: point2)
print("the distance from point 1 to point 2 is \(distance)")   // Output: 5.0


// Example usage
let userLocation = Point(x: 37.7749, y: -122.4194) // San Francisco coordinates
let storeLocation = Point(x: 34.0522, y: -118.2437) // Los Angeles coordinates

let Distance = userLocation.distance(to: storeLocation)
print("Distance: \(distance)")

//03
struct Rectangle {
    var width: Double
    var height: Double
    
    //dynamically computed
    var area: Double {
        return width * height
    }
    
    var perimeter: Double {
        return 2 * (width + height)
    }
}

// Create an instance of Rectangle
let rectangle = Rectangle(width: 5, height: 3)

// Access properties
print(rectangle.width)      // Output: 5
print(rectangle.height)     // Output: 3
print(rectangle.area)       // Output: 15
print(rectangle.perimeter)  // Output: 16


//  example from course

struct Recipe
{
    let name: String
    var ingredients: Set<String>
    var steps: [String]
    
    func printDescription()
    {
        print("Recipe : \(name)")
        print(" Ingredinets : \(ingredients)")
        
        for (index , step) in steps.enumerated()
        {
            print("\(index + 1). \(step).")
        }
    }
}

//intialize the instance
let chocolateCookieRecipe = Recipe (

    name: "chocolate cookie",
    ingredients: [
        "coco powder",
        "chocolate chip",
        "flour"
    ] ,
    steps : [
        "first action",
        "second action",
        "third action"
    ]
)

//method
chocolateCookieRecipe.printDescription()


//adding properties and methods to structures (example from course module)

//adding properties to structures
struct Car
{
    var color: String
    var name:  String
    var topSpeed:Int
    var mileage: Int
    
    //adding methods to a struct
    func drive ()
    {
        print("\(color) car can drive at a maximum speed of : \(topSpeed) !")
    }
}

//intializing a structure
var newCar = Car(color: "blue" , name:"car 1 ",topSpeed: 100, mileage: 5000)

var myCar = Car(color: "black", name:"car 2 ", topSpeed: 120, mileage: 3500)

var smallCar = Car(color: "orange", name: "car 3" , topSpeed: 80, mileage: 3000)

//accessing the properties
print("the color of the car is \(myCar.mileage).")

newCar.drive()


//mutating methods

struct RecipE
{
    var orderCount = 0
    mutating func incrementOrderCount()
    {
       orderCount += 1
    }
    
    mutating func decrementOrderCount()
    {
        orderCount -= 1
    }
}


var recipe = RecipE()
print(recipe.orderCount)
recipe.incrementOrderCount()
print(recipe.orderCount)

recipe.decrementOrderCount()
print(recipe.orderCount)


//Classes
// it basically reference type (shares copy)
//(read write on same data)


class kitchen
{
    var ingredients: [String]
    var isAvailable = false
    init(ingredients: [String])
    {
        self.ingredients = ingredients
    }
}
let marioRecipe = kitchen (

    ingredients: [
    "coco powder",
    "flour "
    ]
)

// Accessing properties
print(marioRecipe.ingredients) // prints: ["coco powder", "flour"]
print(marioRecipe.isAvailable) // prints: false

// Modifying properties
marioRecipe.isAvailable = true

class Menu
{
    let mains: [String]
    let drinks: [String]
    let desserts: [String]
    
    //computed property
    var menuItems : Int {
        mains.count + drinks.count + desserts.count
    }
    
    init (
    
        mains: [String],
        drinks:[String],
        desserts:[String]
    )
    {
        self.mains = mains
        self.drinks = drinks
        self.desserts = desserts
    }
    
    
}
 

// Creating an instance of the Menu class
let myMenu = Menu(mains: ["Pizza", "Burger"], drinks: ["Cola", "Lemonade"], desserts: ["Cake", "Ice Cream"])

// Accessing properties
print("Mains:", myMenu.mains)       // Prints: Mains: ["Pizza", "Burger"]
print("Drinks:", myMenu.drinks)     // Prints: Drinks: ["Cola", "Lemonade"]
print("Desserts:", myMenu.desserts) // Prints: Desserts: ["Cake", "Ice Cream"]

// Accessing computed property
print("Total menu items:", myMenu.menuItems) // Prints: Total menu items: 6


//more examples of classes to better understand

//01
class person {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func celebrateBirthday() {
        age += 1
        print("\(name) celebrates their \(age)th birthday!")
    }
}

// Example usage:
let john = person(name: "John", age: 30)
john.celebrateBirthday() // Prints: John celebrates their 31th birthday!

//02
class Book {
    var title: String
    var author: String
    var pageCount: Int
    
    init(title: String, author: String, pageCount: Int) {
        self.title = title
        self.author = author
        self.pageCount = pageCount
    }
    
    func displayInfo() {
        print("Title: \(title), Author: \(author), Pages: \(pageCount)")
    }
}

// Example usage:
let myBook = Book(title: "Harry Potter", author: "J.K. Rowling", pageCount: 400)
myBook.displayInfo() // Prints: Title: Harry Potter, Author: J.K. Rowling, Pages: 400

//03
class ECar {
    var make: String
    var model: String
    var year: Int
    
    init(make: String, model: String, year: Int) {
        self.make = make
        self.model = model
        self.year = year
    }
    
    func drive() {
        print("The \(make) \(model)  is driving.")
    }
}

// Example usage:
let MyECar_ = ECar(make: "Toyota", model: "Camry", year: 2020)
MyECar_.drive() // Prints: The Toyota Camry is driving.

