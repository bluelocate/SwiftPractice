//: [Previous](@previous)

/*:
 
 Etl
 We are going to do the Transform step of an Extract-Transform-Load.
 
 ETL
 
 Extract-Transform-Load (ETL) is a fancy way of saying, "We have some crufty, legacy data over in this system, and now we need it in this shiny new system over here, so we're going to migrate this."
 
 (Typically, this is followed by, "We're only going to need to run this once." That's then typically followed by much forehead slapping and moaning about how stupid we could possibly be.)
 
 The goal
 
 We're going to extract some scrabble scores from a legacy system.
 
 The old system stored a list of letters per score:
 
 1 point: "A", "E", "I", "O", "U", "L", "N", "R", "S", "T",
 
 2 points: "D", "G",
 
 3 points: "B", "C", "M", "P",

 4 points: "F", "H", "V", "W", "Y",
 5 points: "K",
 8 points: "J", "X",
 10 points: "Q", "Z",
 The shiny new scrabble system instead stores the score per letter, which makes it much faster and easier to calculate the score for a word. It also stores the letters in lower-case regardless of the case of the input letters:
 
 "a" is worth 1 point.
 "b" is worth 3 points.
 "c" is worth 3 points.
 "d" is worth 2 points.
 Etc.
 Your mission, should you choose to accept it, is to write a program that transforms the legacy data format to the shiny new format.
 
 */


import Foundation

class ETL {
    
    class func transform(oldValue : Dictionary<Int, Array<String>>) -> Dictionary<String, Int>{
        
        
        
        
        return ["a" : 1 ]
    }
}
    
let old1 = [ 1 : [ "A" ] ]
let expected1 =  ["a" : 1 ]
let results1 = ETL.transform(oldValue: old1)

assert(results1 == expected1)



let old2 = [ 1 : [ "A", "E", "I", "O", "U" ] ]
let expected2 =  ["a" : 1, "e": 1, "i": 1, "o": 1, "u": 1 ]
let results2 = ETL.transform(oldValue: old2)

assert(results2 == expected2)


let old3 = [ 1 : [ "A", "E" ], 2: ["D", "G"] ]
let expected3 =  ["a" : 1, "e": 1, "d": 2, "g": 2 ]
let results3 = ETL.transform(oldValue: old3)

assert(results3 == expected3)



let old4 = [ 1 : [ "A", "E", "I", "O", "U", "L", "N", "R", "S", "T" ],
            2 : [ "D", "G" ],
            3 : [ "B", "C", "M", "P" ],
            4 : [ "F", "H", "V", "W", "Y" ],
            5 : [ "K"],
            8 : [ "J", "X" ],
            10 : [ "Q", "Z" ]
]
let expected4 = [  "a" : 1, "b" : 3, "c" : 3, "d" : 2, "e" : 1,
                  "f" : 4, "g" : 2, "h" : 4, "i" : 1, "j" : 8,
                  "k" : 5, "l" : 1, "m" : 3, "n" : 1, "o" : 1,
                  "p" : 3, "q" : 10, "r" : 1, "s" : 1, "t" : 1,
                  "u" : 1, "v" : 4, "w" : 4, "x" : 8, "y" : 4,
                  "z" : 10 ]

let results4 = ETL.transform(oldValue: old4)
assert(results4 == expected4)


//: [Next](@next)
