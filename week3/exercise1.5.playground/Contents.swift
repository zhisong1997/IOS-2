import UIKit

let username = "tan" , password = 123
var user = "tan" , pass = 123

if user == username && pass == password{
    print("login successful")
}

if user != username{
    print("invalid username")
}
else if pass != password{
    print("invalid password")
}

