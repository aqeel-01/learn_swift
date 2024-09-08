import Cocoa


//first you must define a custom object, like a struct  and make it implement
//the decodable protocol


struct Recipe: Decodable {
    let title : String
    let views: Int
}


//then you need to convert the JSON string into data

let JSON = """
{
  "title": "Little lemon Apple pie",
  "views": 47093
}
"""

let jsonData = JSON.data(using: .utf8)!

let recipe = try! JSONDecoder().decode(Recipe.self , from:jsonData)
//then you can access all the JSON properties , like title and views , by accessing the properties of the recipe



//JSON as an array of objects

let JSONArray = """
[
  {
   
   "title":"little lemon  apple pie",
   "views":47093
   },


   {
    "title":"little lemon  scrambled egg",
    "views":10757
    }
]
"""


//next the  JSON array has to be converted to data as in earlier example and decoded
//using JSONDecoder

let jsonArrayData = JSONArray.data(using: .utf8)!
let recipes = try! JSONDecoder().decode([Recipe].self, from: jsonArrayData)



//Codingkey  protocol

struct Recipe2: Decodable {
    enum CodingKeys: String , CodingKey { case
     title , views
    }
    
    let title: String
    let views: Int
}


//url mapping of the title lemon recipe

let JSON2 = """
{
"title": "Little lemon Apple pie",
"views":47093,
"url":"www.littleLemon.com/recipes/298/image.png"

}
"""

//again updating
struct Recipe2: Decodable {
    enum CodingKeys: String , Codingkey { case
        
    title , views ,
    imageLink = "url"
    }
    
    let title: String
    let views: Int
    let imageLink: String
}


let JsonData2 = JSON2.data(using: .utf8)!
let recipe2 = try! JSONDecoder().decode(Recipe2.self , from: jsonData2)
print(recipe2.imageLink)
