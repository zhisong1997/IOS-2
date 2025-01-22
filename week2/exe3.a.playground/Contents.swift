import UIKit

var num:Int=100
var price:Double=9.99
var t:Bool=true
var name:String="tan"

let n=type(of:num)
print("\(num) is \(n)")

let p=type(of: price)
print("\(price) is \(p)")

let bool=type(of: t)
print("\(t) is \(bool)")

let na=type(of: name)
print("\(na) is \(name)")
