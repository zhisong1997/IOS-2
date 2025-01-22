import UIKit

let age = 10

if age < 5{
    print("Free entry")
}
else if age >= 5 && age <= 12{
    print("Ticket price is $10")
}
else if age >= 13 && age <= 64{
    print("ticket price is $15")
}
else{
    print ("Ticket price is $8")
}
