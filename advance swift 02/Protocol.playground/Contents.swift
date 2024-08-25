import Cocoa



//protocol

//a set of required properties and methods representing specific functionality

//protocol syntax

//program 01

protocol protocolIdentifier {
    var propertyIdentifier: Int {get  set}
    func methodIdentifier(parameter: Int) -> Int
}


//get read
//set altred ,write

//program 02

protocol  Employee
{
    var name: String {get}
    var daysWorking: Int {get set}
    func executePrimaryDuty()
    func danceToHappyBrithdaySong(lyrics: String)
}


//more protocols examples

//program 03
//part 1
protocol GoodChef{
    
    func cookGoodFood()
}


protocol GreatChef {
    
    func cookGreatFood()
}

protocol ExcellentChef {
    
    func cookExcellentFood()
}


//now inherit all these protocols with a class

//part 02

class person : GoodChef , GreatChef{
    
    func cookGoodFood() {
        
    }
    
    func cookGreatFood() {
        
    }
    
}

// use of extension

extension person: ExcellentChef {
    
    func cookExcellentFood()
    {
        
    }
}

//what if we use only extension , for better code organization

class Person {
    
}

extension Person: GoodChef {
    
    func cookGoodFood() {
        func cookGoodFood()
        {
            
        }
    }
}

extension Person: GreatChef {
    
    func cookGreatFood() {
        
    }
}


extension Person: ExcellentChef {
    
    func cookExcellentFood() {
        
    }
}

//part 03

//now inherit  for protcol from protocol

protocol BlackBeltChef: GoodChef,GreatChef, ExcellentChef {
    
    func cookBlackBeltFood()
}


class PersoN: BlackBeltChef {
    
    func cookGoodFood() {
        
    }
    
    func cookGreatFood() {
        
    }
    
    func cookExcellentFood() {
        
    }
    
    func cookBlackBeltFood() {
        
    }
}


//protcol required and optional protocol methods


//note: to work with optional ,required protcols we have to import

import Foundation

//program 04

//optional protocol syntax

@objc protocol ProtocolIdentifier {
    @objc optional func methodIdentifier(parameter: Int) -> Int
    @objc optional var propertyIdentifier: Int {get}
}

//note : optional protocol works with classes and not with structs

@objc protocol ReservationDataSource {
    
        @objc optional func reserve(tables: Int) -> Int
        @objc optional var maxReservationTables: Int {get}
    
}

class ReservationWebsite: ReservationDataSource {
    
    func reserve(tables: Int) -> Int {
        if tables < 1
        {
            return 0
        }
        return tables
    }
}


class ReservationAgent: ReservationDataSource {
    let maxReservationTables: Int = 2
}
