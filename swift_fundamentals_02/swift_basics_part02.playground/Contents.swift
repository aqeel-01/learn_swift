import UIKit


//swift basics part 02




//Arrays
//ordered list of values of same data type

var items: [String] = ["wheat","barley","potato","salt"]

//you can also let swift to decide the datatype of arrays,which is called type inference

var items02 = ["wheat","barley","potato","salt"]
print(items02) //accessing whole array
print(items02[0]) //accessing indiviual items from array with help of indexing

//edit an item in arary

var train = ["wheat","barley"]
train[1] = "salt"   //barley is replaced by salt ,keep in mind the changed value should have same data type
print(train)


// count  total values in an array
print(train.count)


//append in array NOTICE it adds value at end
train.append("rocks")
print(train)

//insert in array
//we can add values at any where using index
train.insert("potato" , at:2)
print(train)

train.insert("milk ", at:0)
print(train)


//remove an item in array
//just give index number and it will be replaced

train.remove(at:2)
print(train)


//combine two arrays of same datatype
var aArray: [Int] = [1,2,3]
var bArray: [Int] = [4,5,6]
//let cArray = aArray + bArray
let cArray: [Int] = aArray + bArray
print(cArray)


// combine muliple datatype value's in single array  (any ,any object)
//using Any

var zArray:[Any] = [45]
zArray.append(3.90)
zArray.append("orange")
print("zArray contain's \(zArray)")


//Tuples
//these are used to store value's of different datatypes

var fruit = ("oranges",60,true)
//decomposing a tuple (extracting)

var (fruitType,quantity,inStock) = fruit
print(inStock)


//other  approches's


var veg = (vegType:"carrot",quantity:3,inStock:true)
print(veg.vegType)
print(veg.0)
print(veg.1)


var vegetable = ("carrot",5,true)
let (_,quantityVeg,_) = vegetable
print(quantityVeg)


//Dictionries
// a collection of items that have a key and a value


/* can be wriiten as
var travelMiles:Dictionary<String,Int> = ["richie":800 , "peter":40, "Amy":320]
print(travelMiles)
*/

//also can be written as
var TravelMiles = ["richie":800 , "peter":40, "Amy":320]
print(TravelMiles)


//prefered
var travelMiles:[String:Int] = ["richie":800 , "peter":40, "Amy":320]
print(travelMiles)

//count items in dictionary
let itemsCount = travelMiles.count
print(itemsCount)

//creating an empty array
var emptyDictionary : [String:Int] = [:]
print(emptyDictionary)

//add items to dictionry
travelMiles["daryal"] = 740
print(travelMiles)

//retrive an item from  dictionary (safely)

if let travellerMiles = travelMiles["peter"]
{
    print("miles travelled by \(travellerMiles) " )
}


//change an item's value
travelMiles["richie"] = 1400
print(travelMiles)


//another approch
if case 40 = travelMiles.updateValue(120, forKey: "peter")
{
    print("updated sucessfully")
}


//removing an item
if let deletedItem = travelMiles.removeValue(forKey:"richie")
{
    print("deleted sucessfully")
    
}
print(travelMiles)

//other approch
travelMiles["Amy"] = nil

print(travelMiles)


// for in loop for dictionries and arrays

//for arrays

let names = ["harry","nicola","lucas"]

for zNames in names
{
    print("hello \(zNames)")
}


//for dictionries
let vehicles = ["Unicycles":1 , "Motorcycles":2 , "Reliant Robin":3 , "car":4]
for (vehicleName,wheels) in vehicles
{
    print("A \(vehicleName) has \(wheels)")
}


//functions

//part 01

//01

func addTwoNum ()
{
    var a = 12
    var b = 20
    
    var c = a+b
    print(c)
}

addTwoNum()

//02
func addTwo(a:Int , b:Int)
{
    var result = a+b
    print(result)
}
addTwo(a:10,b:20)
addTwo(a: 45, b: 5)

//03
func add (str:String , int:Int)
{
    var greet = "hello  " + str
    var num = int
    
    print(" \(greet) your ID number is \(num)")
}

add(str: "Ali", int: 101)


//04
//return argument from function

func addTwoNums(a:Int , b:Int) ->Int
{
    var fee  = 1
    var result  = fee + a+b
    
  return(result)
   
}
print(addTwoNums(a: 100, b: 50))


//05
//return muliple arguments

func findMinMax(a:Int,b:Int) ->(Int,Int)
{
    
    if a > b
    {
        return(b,a)
    }
    else
    {
        return(a,b)
    }
}

print(findMinMax(a: 12, b: 7))


//part02

//use of void simple
func show()
{
    print("showing you some text")
}

show()

//passing parameter
func double(passedValue:Int)
{
    let result = passedValue * 2
    print("double \(passedValue) is \(result)")
}
double(passedValue: 20)

//passing muliple parameter
func multiply(firstValue:Int , secondValue:Int) ->Int
{
    let result = firstValue * secondValue
    return result
}
print(multiply(firstValue: 10, secondValue: 3))




// Function that swaps the values of two integers using inout parameters
func swapValues(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

// Example usage
var x = 5
var y = 10
print("Before swapping: x = \(x), y = \(y)") // Output: Before swapping: x = 5, y = 10

// Call the function with inout parameters
swapValues(&x, &y)

// Values of x and y are swapped
print("After swapping: x = \(x), y = \(y)") // Output: After swapping: x = 10, y = 5


//part03

func hiThere(_ fn:String,_ sn:String)
{
    let fullName = fn + " " + sn
    print("Hi there \(fullName)")
}
hiThere("fred", "george")


func HiThere(firstName fn:String,surname sn:String)
{
    let fullName = fn + " " + sn
    print("Hi there \(fullName)")
}
HiThere(firstName:"ali", surname: "khan")


func display(_ s1:String, _ s2:String ,  score:Int = 0)
{
    let name_score = s1 + " " + s2 + " " + String(score)
    print(" hello , \(name_score)")
          
}
display("hi", "ali")
display("hy", "ali", score: 121)


//function types
//these are the signatures of the actual functions

func addTwoInts(a:Int , b:Int) -> Int
{
    return a+b
}

var mathFunction: (Int,Int) -> Int = addTwoInts
print("result:\(mathFunction(5,5))")




