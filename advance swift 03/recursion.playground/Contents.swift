import Cocoa



//recusrion
// a loop that happens when code calls itself



//program 01
/*
func findRecipe(folder: Folder) -> String? {
    
    print("Searching folder: \(folder.name)")
    
    if folder.hasRecipe {
        return folder.name
    }
    
    
    var result: String? = nil

    for childFolder in folder.folders {
        result = findRecipe(folder: childFolder)
        
        if result != nil {
            return result
        }
    }
}

*/
//program 02

var n = 6

while n > 0{
    print(n)
    n -= 1
}
print("new")
//to achive the same with recursion we use
//program 03
func output( z : Int) {
    
    if (z==0){  //base case
        return
    }
    else {
        print(z)   //perform the work
        output(z: z-1)  //repeat rescursion
    }
}

output(z: 6)


//program 04
//finding a sum of all numbers from 1 to n

var x = 6
var sum = 0

while n > 0 {
    sum += x
    x -= 1
    
}

//program 05

func outpuT(a: Int) -> Int {
    if(a==0){
        return 0
    }
    
    else
    {
        return a + outpuT(a: a - 1)
    }
}
