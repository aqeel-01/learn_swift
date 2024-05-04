import UIKit



//swift basics  (20 April 2024)
//from variables concept to optionals



//00

// Variables and Constants
var variableNumber = 10
let constantNumber = 5

// Operators
let sum = variableNumber + constantNumber
let difference = variableNumber - constantNumber
let product = variableNumber * constantNumber
let quotient = variableNumber / constantNumber
let modulus = variableNumber % constantNumber

// Compound Assignment Operator
variableNumber += 5 // equivalent to: variableNumber = variableNumber + 5

// Unary Operator
let unaryMinus = -variableNumber

// Strings
let greeting = "Hello"
let name = "Swift"
let combinedString = greeting + " " + name // String concatenation
print(combinedString) // Output: Hello Swift

// Comparing Strings
let string1 = "apple"
let string2 = "banana"
if string1 == string2 {
    print("Strings are equal")
} else {
    print("Strings are not equal")
}

// Uppercased and Lowercased Methods
let exampleString = "Hello World"
let uppercasedString = exampleString.uppercased()
let lowercasedString = exampleString.lowercased()


// Data Type Compatibility
let intValue = 10
let doubleValue = 3.14

let result = Double(intValue) + doubleValue // Casting intValue to Double for compatibility

// Prefix and Suffix in Strings
let ExampleString = "Swift is awesome!"

if ExampleString.hasPrefix("Swift") {
    print("The string starts with 'Swift'")
}

if ExampleString.hasSuffix("awesome!") {
    print("The string ends with 'awesome!'")
}

// Count Method
let countOfCharacters = ExampleString.count
print("The string has \(countOfCharacters) characters.")


// Multiline Literals
let multilineString = """
    This is a multiline string
    It can contain multiple lines
    """

// Comparison Operator
let comparisonResult = 10 > 5 // true

// Logical Operators
let logicalResult = (10 > 5) && (5 < 3) // false



//(01)
//else if
 var position = 2

if position == 1
{
    print("you came first")
}
else if position == 2
{
    print("you came second")
}

else
{
    print("you did not finish in the top 2")
}


// booleans
let coldOutside = true
if coldOutside == true {
    print("put on a warm coat")
}

//logical AND operator with multiple/compound boolean expression
var temp = 70
if temp >= 68 && temp <= 72 {
    print("the temp is just right")
}
else
{
    print("the temp is too hot or cold")
}

// logical OR operator
var mainPower = false
var batteryPower = true

if mainPower || batteryPower {
    print("i can use my laptop")
}

else
{
    print("better find a charger")
}


//switch
let language = "english"
switch language {
case "english" :
    print("the default language is set to english")
case "spansih":
    print("the default language is set to spansish")
default:
    print("the default language has not yet been confugured")
}



//loops

//for in loop
for value in 1...5
{
    print("i repeats for \(value) times")
}

//while loop
var turn = 1
while turn <= 3 {
    print("this is turn number \(turn)")
    //turn += 1 its also can be written
    turn = turn + 1
}

//while loop using with flag

var totalturn = 3
var turnleft = true

while turnleft
{
    totalturn -= 1
    
    if totalturn < 1
    {
        turnleft = false
    }
    
    print("got another turn")
    
}

//repeat while loop

var counter = 0
repeat{
    print("the counter is currently \(counter)")
    counter += 1
}
while counter < 10  //it will terminate on 10 thus it prints just for 9 times


//nested for loop
for i in 1...5
{
    print("outer loop \(i)")
    
    for j in 1...5
    {
        print("inner loop \(j)")
    }
}

//nested while loop
var outer = 1
while outer <= 3
{
    print("outer loop is currently \(outer)")
    
    var inner = 1
    while inner <= 3
    {
        print("inner loop \(inner)")
        
        inner += 1
    }
    
    outer += 1
}


//nested loop combining while outer and inner for in loop

var month = 1
while(month < 5)
{
    print("Month is currently: \(month)")
    
    for inner in 1...5
    {
        print("inner loop \(inner)")
    }
    
    month += 1
}



//break keyword
//it will exit the loop iteration  irrespective of previous  condition
var Month = 1
while(Month <= 5)
{
    print("Month is currently: \(Month)")
    
    for Inner in 1...5
    {
        
            if Inner == 4
            {
                break
            }
        
        print("inner loop \(Inner)")
    }
    
    Month += 1
}


//continue keyword
// it will just skip the current iteration when continue condition is met
var Months = 1
while(Months <= 5)
{
    print("Month is currently: \(Months)")
    
    for Inners in 1...5
    {
        
            if Inners == 3
            {
                continue
            }
        
        print("inner loop \(Inners)")
    }
    
    Months += 1
}


// optionals
//which reflects value may present or may not

var value1 : Int?
var value2 : Int?

print(value1)
print(value2)


//forced un_wrapping
//is used when you are pretty sure that it contain a value,otherwise it will throw runtime error
var avalue : Int?
let bvalue : Int! = avalue

print(avalue)
print(bvalue)


//optional binding

var  aValue: Int?

if let aValue = aValue
{
    print(aValue)
}
else
{
    print("no value")
}


//implicetly unwrapped optionals
//you already know value is present ,as its defined earlier in code
let Avalue:Int? = 5
let Bvalue:Int! = 7

print(Avalue)
print(Bvalue)


