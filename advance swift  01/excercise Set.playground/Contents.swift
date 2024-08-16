import Cocoa


//step 1  declare sets

let reservationsInPerson : Set<String> = ["000-345-3441" , "000-345-3442"]


let reservationsOverphone : Set<String> = ["000-345-3443","000-345-3444"]


let reservationOverInternet : Set<String> = ["000-345-3445","000-345-3446"]




//step 02
//combine all three sets via union method

let inPersonAndOverPhone = reservationsInPerson.union(reservationsOverphone)

print(inPersonAndOverPhone)

var allPhoneNumbers = inPersonAndOverPhone.union(reservationOverInternet)

print(allPhoneNumbers)


//step 03
//create a set for the reservation codes

var confirmationCodes : Set<String> = ["LL3450", "LL3451","LL3452","LL3453","LL3454"]


//step 04
//compare the number of the codes to the number of phone numbers

print(" the total phone numbers are \(allPhoneNumbers.count) and total number of codes are \(confirmationCodes.count)")


// step 05
//insert more codes if it less than phone numbers

confirmationCodes.insert("LL3455")

print(" the total phone numbers are \(allPhoneNumbers.count) and total number of codes are \(confirmationCodes.count)")


//step 06
//removing  the code confirmation code  and the phone number for cancelled reservations

allPhoneNumbers.remove("000-345-3443")
confirmationCodes.remove("LL3450")


print(" the total phone numbers are \(allPhoneNumbers.count) and total number of codes are \(confirmationCodes.count)")
