import Cocoa


//type casting
//identify and ensure instance type

//is
//checks weather an instance is of a certain subclass type

//as
//casts an instance as a different type


//pro 01

class   Customer
{
    
}

class peanutAllergyCustomer: Customer{
    
    let dishesTOAvoid = [
    "Dish7",
    "Dish8"
    ]
    
    func executeEmergencyProcedure()
    {
        print("call 911")
    }
}


var customers: [Customer] = []
for _ in 0 ..< 5
{
    let randomNumber = Int.random(in: 0...1)
    
    let customer: Customer
    if randomNumber == 0
    {
        customer = Customer()
    }
    else
    {
        customer = peanutAllergyCustomer()
    }
    
    customers.append(customer)
}


for customer in customers
{
    if customer is peanutAllergyCustomer
    {
        print("welcome. Do note that some food has peanuts.")
    }
    else
    {
        print("welcome")
    }
    
    if let peanutAllergyCustomer = customer as?
        peanutAllergyCustomer
    {
        print("dishes to avoid:")
        print(peanutAllergyCustomer.dishesTOAvoid)
        print("emergency procedure:")
        peanutAllergyCustomer.executeEmergencyProcedure()
    }
    
}
