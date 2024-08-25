import Cocoa


protocol Driver {
    var name : String {get}
    func driveToDestination(_ destination: String , with food: String)
}

class DeliveryDriver:  Driver {
    
    let name: String
    init(name: String) {
        self.name = name
    }
    
    func driveToDestination(_ destination: String, with food: String) {
        
        
        print("\(name) is  driving to \(destination) to deliver \(food).")
        
        
    }
}


class LittleLemon {
    
    
    var deliveryDriver: Driver?
    func  deliveryFood(_ food: String, to destination: String){
        if let  deliveryDriver = deliveryDriver {
            deliveryDriver.driveToDestination(destination, with: food)
        }
        else
        {
            print("No delivery driver ")
        }
    }
}


let bob = DeliveryDriver(name: "bob")
let littleLemon = LittleLemon()
littleLemon.deliveryFood(
    
    "super Sopaghetti",
    to:"1 spaghetti lane"
)


littleLemon.deliveryDriver = bob
littleLemon.deliveryFood("super spaghetti ", to: "1 spaghetti lane")
