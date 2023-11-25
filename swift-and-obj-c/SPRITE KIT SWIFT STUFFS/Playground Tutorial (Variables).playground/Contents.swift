//: Playground - noun: a place where people can play

import UIKit
import SpriteKit
import Foundation

//Variables 

var myInt: Int = 10
var score: Int = 20

score
score = 0
score += 1
score -= 2
score += 6
score *= 2
score /= 5
score += myInt

//Doubles

var myDoubles: Double = 10.2

myDoubles += 1.1
myDoubles -= 3.2
myDoubles *= 2

//String

var myString: String = "Hello"
myString
var playerName: String = "Wyatt"
var greatPlayer: String = "\(myString) \(playerName), your score is \(score)!"

//Bools

var myBool:Bool = false
var shouldYouSubscribeToApexTV:Bool = true

//Tuples

var myTuple:(Int, Int) = (10, 5)
var myPoint:(x: Int, y: Int) = (17, 82)
myPoint.y

//var vs let

var myVarInt:Int = 10
let myLetInt:Int = 15

myVarInt += 1

//type conversion

var theInt:Int = 10
var theDouble:Double = 5.2

Double(theInt) + theDouble

print(theInt)
print(theDouble)
print(myVarInt)
print(myTuple)

























