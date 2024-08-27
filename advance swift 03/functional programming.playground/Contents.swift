import Cocoa


//functional programming
//pass functions to other functions as arguments


//program 01
//base currency conversion (simple)

var prices = [6,7,2,3,12,8]

for i in 0..<prices.count {
    
    let newCurrency = prices[i] * 2
    prices[i] = newCurrency
}

//now using functional way of implementing the same logic (using high order function)
//program 02

let originalPrices = [2,5,6,12,5,20]

func convertPrices(originalPrices: [Int] , conversionClosure:(_ price: Int) -> Int) -> [Int] {
    
    var convertedPrices = [Int] ()
    for originalPrice in originalPrices {
        let convertedPrice = conversionClosure(originalPrice)
        convertedPrices.append(convertedPrice)
    }
    
    return convertedPrices
}

convertPrices(originalPrices:originalPrices, conversionClosure: { $0 * 2 })
