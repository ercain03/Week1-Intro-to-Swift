//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Write a function that takes in an array of strings, checks if array contains “Earth”, if not, adds it otherwise returns

let noEarthArr = ["pluto", "Venus", "Mars"]
let earthArr = ["pluto", "Venus", "Earth", "Mars"]

func earthChecker(planets: [String]) -> [String]{
    if (planets.contains("Earth")){
        return planets
    } else {
        var addedEarthArr = planets
        addedEarthArr += ["Earth"]
        return addedEarthArr
    }
}

earthChecker(noEarthArr);
earthChecker(earthArr);


//Use reduce to create single string from the above array. [“Venus”, “Earth”] would produce “Venus, Earth”
var aboveArray = earthChecker(earthArr);


//Declare and implement a dictionary that can contain as values Strings, Ints, etc
var dictionary = [String : AnyObject]()

dictionary["name"] = "Tre"
dictionary["number"] = 3
dictionary["basketball"] = ["Lakers", "Sixers"]
dictionary["tall"] = false
dictionary["short"] = true

dictionary

//Declare a dictionary of string values. Declare a function that takes in a string and searches dictionary for it. Use filter
//var stringDictionary = ["name": "tre", "age": "28", "sex": "male"]
//
//func stringFilter(str: String, dictionary: )
//Didn't get this one.

//Write examples for union, intersect, subtract, exclusive Or set operations

let setOne: Set = ["sixers", "lakers", "bulls", "warriors", "cavaliers", "okc", "kings"]
let setTwo: Set = ["sixers", "lakers", "bulls", "warriors"]

let union = setOne.union(setTwo)
let intersect = setOne.intersect(setTwo)
let subtract = setOne.subtract(setTwo)
let exclusiveOr = setOne.exclusiveOr(setTwo)

//Write a function that counts repeating words and prints out the count of each
//func repeatinWords(words: String ){
//    
//}
//Didn't get this one

//Add two numbers without using "+"

func repeatingNumber(firstNumber: Int, secondNumber: Int) -> Int {
    var addedNUm = secondNumber
    for _ in 0 ..< firstNumber {
        addedNUm += 1
    }
    return addedNUm
}

repeatingNumber(3, secondNumber: 7)
repeatingNumber(3, secondNumber: 30)

