import Cocoa



//program 01

let paymentsArray = [99.54, 44.31, 89.0 , 6.5 , 21.24 , 63.7 , 59.1]

let largePayments = paymentsArray.filter{ $0 > 60 }

print(largePayments)

let filteredPaymentsString = largePayments.map { String($0)}

print(filteredPaymentsString)


let finalListString = filteredPaymentsString.reduce("") {
    $0 + "," + $1
}

print(finalListString)


// more examples
  

struct User {
    
    let id : Int
    let name: String
}

let users = [
    User(id: 1 , name : "john"),
    User(id: 2 , name: "Tom")
]

let usersIds = users.map {
     user in
    return user.id
}

let UsersIds = users.map { $0.id}

//compact map

let urlsAsString = ["https://www.google.com" , "not a valid  url"]
let urlsOrNil = urlsAsString.map {URL(string: $0)}


//functional programming for in loop vs forEachfunction


//for in loop

let donationsInformation = ["john" : 56 , "tom" : 15 , "charlie":104]
let donationsText = donationsInformation.map {"\($0.key) has donated  \($0.value) so far"}
for text in donationsText {
    print(text)
}


//forEach

let DonationsInformation = ["john": 56  , " tom": 15 , "charlie": 104]
DonationsInformation.map { "\($0.key) has  donated  \($0.value) so far"}
    .forEach{print($0)}

