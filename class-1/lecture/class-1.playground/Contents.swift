//: Playground - noun: a place where people can play

import UIKit

// Write a function that takes in a string, checks if it can be converted to a number and if possible, returns a number

func numberPrinter (string: String) -> Float?
{
    return Float(string) != nil ? Float(string) : nil
    
}

// tests
numberPrinter("5")
numberPrinter("5.0")
numberPrinter("5.111")
numberPrinter("tre")
numberPrinter("69fkfkf")
numberPrinter("Dave")


// Write a function that takes in a tuple (code, message) and returns a string by using interpolation

func tupe ( params: (code: Int, message: String) ) -> String {
    return("ERROR \(params.code): \(params.message)")
}

let myTup = (code: 0, message: "401 Fatal Error")

tupe(myTup)


//Write a function that take in a string, and returns a message: “String contains n characters”

func stringCharCounter (string: String) -> String {
    
    
    return("String contains \(string.characters.count) characters")
}

stringCharCounter("I love codefellows")

//Write a function that takes in a string and reverses it. Use a simple for loop

func stringReverse (string: String )-> String {
    var newString = "";
    for index in 1...string.characters.count
        
    {
        newString.append(string[string.startIndex.advancedBy(string.characters.count - index)])
    }
    return newString
}

stringReverse ("racecar")
stringReverse ("redrum")
stringReverse ("ana")


//Declare a variable that’s function. Implement function to take in a string (name) and return greeting message.

var greeting = { (name: String) -> String in
    return("Hello, \(name) Duece!!! what it is playa.")
}

greeting("Tre")