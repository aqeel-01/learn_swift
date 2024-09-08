import Cocoa




import Foundation

let jsonstring = """
[
    {
        "id": 1,
        "inventory": 20,
        "price": 6,
        "name": "beef pasta"
    },
    {
        "id": 2,
        "inventory": 100,
        "price": 2,
        "name": "vanilla Icecream"
    }
]
"""

let utf8String = jsonstring.utf8
let jsonData = Data(utf8String)

struct MenuItem: Decodable {
    let id: Int
    let inventory: Int
    let price: Int
    let name: String
}

let decoder = JSONDecoder()

do {
    let arrayOfMenuItems = try decoder.decode([MenuItem].self, from: jsonData)
    arrayOfMenuItems.forEach { print($0.name) }
} catch {
    print("Failed to decode JSON: \(error)")
}


