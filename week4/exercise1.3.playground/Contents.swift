import UIKit

let num = [1, 3, 5, 10]

var smallest = num[0]
var largest = num[0]

for number in num {
    if number < smallest {
        smallest = number
    }
    if number > largest{
        largest = number
        
    }
}
print("smallest \(smallest)")
print("largest \(largest)")
