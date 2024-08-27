import Cocoa


struct Order {
    
    let price : Int
    let location : String
}


func totalRevenueOf(orders: [Order] , location: String) -> Int {
    
    let  ordersAtLocation = orders.filter { $0.location == location}
    print(ordersAtLocation)
    
    let  orderPrices =  ordersAtLocation.map { $0.price}
    print(orderPrices)
    return orderPrices.reduce(0) { $0 + $1}
}

let orders = [
    Order(price: 24 , location: "new york"),
    Order(price:37 ,location: "san farncisco"),
    Order(price:101 , location: "new york"),
]


let result = totalRevenueOf(orders: orders, location: "new york")
print(result)
