import UIKit

var calendar: Calendar = Calendar.current
var now = Date()
var year = calendar.component(.year, from: now)

var birthdayYear = 2000
var age = year - birthdayYear

print("Your age is \(age)")
