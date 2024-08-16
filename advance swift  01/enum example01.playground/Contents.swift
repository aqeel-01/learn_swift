import Cocoa


//enum's
// enum's progran chunk 01


enum Dessert
{
    
    case tiramisu
    case affogato
    case cannoli
    
}

let favouriteDessert = Dessert.tiramisu


switch  favouriteDessert
{
        
case .tiramisu:
    print("Tiramisu is this week's favourite dessert!")
    

    
case .affogato:
    print("Affogato is this week's favourite dessert!")
    
    
case .cannoli:
    print("Cannoli is this week's fvaourite dessert!")
    
}





// enum's program chunk 02
//adding more details


enum Dessert2
{
    case tiramisu(chefName: String?)
    case affogato
    case cannoli
}


let favouriteDessert2 = Dessert2.tiramisu(chefName: "Mario")



switch favouriteDessert2
{
case .tiramisu(let chefName) :
    let prefix: String
    if let chefName = chefName
    {
        prefix = "\(chefName) 's"
    }
    else
    {
        prefix = " "
    }
    print("\(prefix) Tiramisu is this week's favorite dessert!")
    
    
case .affogato:
    print("affogato is this week's favourite dessert!")
    
    
case .cannoli:
    print("cannoli is this week's favourite dessert!")
    
}


// enums with raw values

enum PastaTypes: Int
{
    case spaghetti = 8
    case penni = 10
    case ravioli = 11
    case rigatoni = 12
}

let cookingTime = PastaTypes.penni.rawValue
print("penni will be perfectly cooked in \(cookingTime) minutes")


//doing same with function using enum(as argumnent)

func cookingPerfectPasta(pasta: PastaTypes)
{
    let cookingTime = pasta.rawValue
    print("\(pasta) will be perfectly cooked in \(cookingTime) minutes")
}

cookingPerfectPasta(pasta: .rigatoni)





//CaseIterable protocol
//using them with enumeration(enums)


enum pastaTypes: Int ,CaseIterable
{
    case  spaghetti
    case penni
    case ravioli
    case rigatoni
}

let totalCaseCount = pastaTypes.allCases.count
print(totalCaseCount)



//enums with assoiated values
//try 01 (mistake is it doesnt tell correct answer for if else condition)
enum pastatypes
{
    case spaghetti(cookingTime:Int)
    case penne(cookingTime:Int)
    case ravioli(cookingTime:Int)
    case rigatoni(cookingTime:Int)
}

var checkIfCooked = pastatypes.spaghetti(cookingTime: 6)

if cookingTime < 8
{
    print("Spaghetti is still not fully cooked ...")
}
else
{
    print("Spaghetti is cooked ,take it out of water !")
}

//enums with assoiated values
//try 02 (corrected)
enum pastAtypes {
    case spaghetti(cookingTime: Int)
    case penne(cookingTime: Int)
    case ravioli(cookingTime: Int)
    case rigatoni(cookingTime: Int)
}

var CheckIfCooked = pastAtypes.spaghetti(cookingTime: 2)

if case let .spaghetti(cookingTime) = CheckIfCooked {
    if cookingTime < 8 {
        print("spaghetti is still not fully cooked ...")
    } else {
        print("spaghetti is cooked, take it out of the water!")
    }
}



//using enum inside a function

enum pastatypeS {
    case spaghetti(cookingTime: Int)
    case penne(cookingTime: Int)
    case ravioli(cookingTime: Int)
    case rigatoni(cookingTime: Int)
}

func checkIfCooked(for pasta: pastatypeS)
{
    switch pasta
    {
    case .spaghetti(let cookingTime):
        if cookingTime < 8
        {
            print("spaghetti is still not fully cooked...")
        }
        else
        {
            print("spaghetti is cooked , take it out of the water!")
        }
    default: return
    }
}


checkIfCooked(for: .spaghetti(cookingTime: 5))




// using "Where" statements
//it will help it cater if else abundance problem

enum pastatypeS2 {
    case spaghetti(cookingTime: Int)
    case penne(cookingTime: Int)
    case ravioli(cookingTime: Int)
    case rigatoni(cookingTime: Int)
}


func checkIfCooked2(for pasta : pastatypeS2)
{
    switch pasta
    {
    case .spaghetti(let cookingTime) where cookingTime >= 8:
        print("Spaghetti is cooked , take it out of the water !")
    default: print("pasta is not cooked")
    }
}




checkIfCooked(for: .spaghetti(cookingTime: 10))



//tip

//associated (dynamically attach values of any type)

//  raw  (attach predefined values of same datatype)
