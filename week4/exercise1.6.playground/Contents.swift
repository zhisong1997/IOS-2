import UIKit

let num = [1,2,3,4]


for i in num {
    for j in 1...i{
        print("*", terminator:"")
    }
    print("")
}
var n = 3
for i in 1...n {
    for j in 1...n{
        print("*", terminator:"")
    }
    print("")
     n -= 1
}


