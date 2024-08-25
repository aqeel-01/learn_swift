import Cocoa


//program 01

class Vegetable
{
    
   // var primaryColor = "green" b/c stored property can not be override
    
   
    //but computed property can be so , i use this for override
    var  primaryColor: String { "Green"
        
    }
        
        func sing()
        {
            print("I'm an awesome vegetable")
        }
    
}

class Spinach: Vegetable
{
    
}

class Broccoli : Vegetable
{
   
    override func sing()
    {
        print("\(primaryColor) is my favourite color")
        super.sing()
        print("I  like the sun")
    }
    
    
}

class Carrot: Vegetable
{
    
    override var primaryColor: String {
        
        "orange"
        
    }
}


let spinach = Spinach()
let broccoli = Broccoli()
let carrot = Carrot()


print(spinach.primaryColor)
print(broccoli.primaryColor)
print(carrot.primaryColor)


spinach.sing()
broccoli.sing()
carrot.sing()

