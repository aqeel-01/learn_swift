import Cocoa




//sets tutorial

//arrays : is ordered list of same data type ,elmements accessed by index number
//dictionries : is collection of un-ordered key value pairs (every key is unique)

//sets: un-ordered collections of unique values of same data type

//benifits of sets
//searching for duplicates
//maintaining unique elements
//insering and removing elements
//doesn't slow the program ,where there is huge collection of values

//set syntax

//program 01

var colors: Set<String> = ["red" , "blue","green"]

//insert method

colors.insert("purple")
colors.insert("red") //it will ignore the duplicates

print(colors) //only 1 red will be printed

//remove method
colors.remove("blue")
print(colors)

// pro 02

//set declaration
 var pastaTypesSet = Set<String>()  //set of strings
var pastaTypesArray = [String]()    //array of strings


//insert method
pastaTypesSet.insert("tagliatelle")
pastaTypesSet.insert("fettuccine")
pastaTypesSet.insert("spaghetti")
pastaTypesSet.insert("Linguine")

//count() method
print(pastaTypesSet)
print(pastaTypesSet.count)


// pro 03

var pastatype = Set<String> ()

pastatype.insert("Tagliatelle")
pastatype.insert("fettucine")
pastatype.insert("spaghetti")
pastatype.insert("Linguine")

//testing duplicate

pastatype.insert("Linguine")

print(pastatype)  //another Linguine was not added


//remove method

pastatype.remove("spaghetti")
print(pastatype)


//union method   (it combine's two sets while paying attention to removing duplicates)


var pastatype1 = Set<String> ()

pastatype1.insert("Tagliatelle")
pastatype1.insert("fettucine")
pastatype1.insert("spaghetti")
pastatype1.insert("Linguine")



var pastatype2 = Set<String>()  //creating another set

pastatype2.insert("tortellini")
pastatype2.insert("zilli")
pastatype2.insert("Tagliatelle")  //intentionally dupliacte
pastatype2.insert("Lasagna")

//using union method

let pastaSetUnion = pastatype1.union(pastatype2)



print(pastaSetUnion)
print(pastaSetUnion.count)


