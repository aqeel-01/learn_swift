import Cocoa


//access level modifier syntax

class ClassIdentifier
{
    [modifier]   var number = 1
}

//example using a method
class ClassIdentifier
{
    [modifier] func doSomething()
    {
        
    }
}


//putting access level modifiers into practice

class SecretFood
{
    var secretIngredinets: [String] = []
}

class Chef
{
    func cookSecertFood(_ secretFood: inout SecretFood)
    {
        print(secretFood.secretIngredinets())
      
    }
}

private var secertIngredinets : [String] = []


fileprivate func readSecretIngredients()
{
    
    
    print("secert ingredinets :")
    print(secertIngredinets)
}



