import UIKit

var greeting : String? = nil

var double: Double = 44.332323
var anortherDouble = 44.5

var aBoolean: Bool? = true

var number : Int = 4
var aString = String(number)


// How to deal with optionals
var anOptionalNumber = Int(greeting ?? "234") //coalecsing operator to give default values

let x = 4 + anOptionalNumber! // Force unwrapping can lead to crashes if the optional had nil instead of a value


if greeting != nil { // Manual checking for nil and force unwrapping
    print(greeting!)
} else {
    print("greeting was nil :(")
}

if let safeGreeting = greeting { //if let to use get a `safe` variable if the original is not nil
    print(safeGreeting)
}

// Loops
for n in 0..<5 {
    if n%2 == 0 {
        print(n)
    } else {
        print("n is not multiple of 2: \(n)")
    }
}

var index = 0
while index < 5 {
    print(index)
    index = index + 1
}

index = 0
repeat { // `repeat while` works like a regular while, but will execute its task at least once
    print(index)
    index = index + 1
} while index < 5


// If else and Switch case
if greeting == nil {
    print("there is no greeting")
} else if greeting == "hi Humberto" {
    print("Humberto")
} else if greeting == "hi Gary" {
    print("Gary")
} else {
    print("I dont know this greeting")
}

switch greeting {
    case nil: print("there is no greeting")
    case "hi Humberto": print("Humberto")
    case "hi Gary": print("Gary")
    case "hi Hugo": print("Hugo")
    default: print("I dont know this greeting")
}


// Enums
enum PhoneStates {
    case darkMode, dayMode, coolMode
}
var chosenState = PhoneStates.coolMode

print("\n\nstate data: ")
print(chosenState)
//print(state.rawValue) This is not available, as we are not declaring it what the raw value is going to be mapped to
// see the food and Importance example on how to use and declare it



enum Food: String {
    case pizza, hotdogs, fruits, veggies, jello, chickenLegs
}
var chosenFood : Food = .fruits

print("\n\nFood data: ")
print(chosenFood)
print(chosenFood.rawValue)



enum Importance: Int {
    case low, medium = 10, high
}
let chosenImportance = Importance.high

print("\n\nImportance data: ")
print(chosenImportance)
print(chosenImportance.rawValue)

switch chosenState { //deal wiht different options
    case .darkMode: print("yeah, dark mode!")
    case .dayMode:print("oh no, day mode :(")
    case .coolMode: print("cool, dark cool!")
}

switch chosenFood { //grouping options
    case .pizza, .hotdogs: print("Junk Food!!!")
    case .fruits: print("not too bad, I'll take it")
    default: print("I wont eat it, no matter what")
}
    
switch chosenImportance.rawValue { // we have to add a default, as we are dealing with the raw value, which is an Integer
    case Importance.high.rawValue: print("Really important stuff, will do right away!")
    case Importance.medium.rawValue: print("I can work on this")
    case Importance.low.rawValue: print("I might do it later :/")
    default: print("I wont do it")
}

