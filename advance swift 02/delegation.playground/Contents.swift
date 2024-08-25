import Cocoa



//delegate synatx
//program 01

class Identfier {
    
    var delegate : Protocol?
}


//delegation in action
//program 02

protocol Employee {
    var name: String {get}
    var daysworking: Int {get set}
    func executePrimaryDuty()
}

struct Waitress: Employee {
    let name: String
    var daysworking = 0
    
    var primaryDutyDelegate: Employee?
    
    func executePrimaryDuty() {
        
        if let primaryDutyDelegate = primaryDutyDelegate {
            primaryDutyDelegate.executePrimaryDuty()
            return
        }
        
        print("\(name) brings delicious food to customers ")
    }
}

struct Cook: Employee {
    let name: String
    var daysworking = 0
    
    func executePrimaryDuty() {
        print("\(name) cooks delecious food for customers")
    }
}


var jennifer = Waitress(name:"jennifer")
let jane = Waitress(name:" jane")
let mario = Cook(name: "mario")


jennifer.primaryDutyDelegate = mario
jennifer.executePrimaryDuty()
