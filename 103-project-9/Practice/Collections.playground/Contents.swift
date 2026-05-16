import UIKit

var greeting = "Hello, playground"

/*
 Three types of collections:
    1) Arrays: Order collection of values. Values are stored in the order that the items are added. Allows duplicates.
    2) Sets: Unordered collections of unique values. Items do not have an index or position and duplicates are not allowed. Useful for memberships rather than order.
    3) Dictionaries: Unordered collections of key-value pairs. Each key must be unique, but the values can be duplicated. Useful for looking up a key
 */
print("""
---Array---
1. Ordered Collection
2. Each Item as a position or index
3. Supports duplicates \n
""")

// Define an array
var gradesArray: [Int] = [100, 90, 67]

// Print the Array
print("This is an Array \(gradesArray).")


print("""
1. Unordered
2. No index or position for items
3. Does not allow duplicates.
4. Prints in a random order \n
""")

// Define a Set
var createSet: Set<Int> = [100, 90, 67]

// Print the Set

print("This is a Set \(createSet). \n")


print("""
---Dictionary---
1. Unordered
2. Key must be unique, values can be duplicated.
3.Key value pair structure. \n
""")

// Define a Dictionary
var createDictionary: [String:Int] = [
    "Mike": 100,
    "Carlos": 90,
    "Andrew": 78
]
// Print the Dictionary
print("This is a Dictionary \(createDictionary).")


// Exercise #2

// Define Array:
var studentNames: [String] = ["Lars", "Kirk", "James", "Robert"]
// Print Array:
print("The Students Are \(studentNames).")
// Define Dictionary
var studentId: [Int:String] = [
    101: "Lars",
    102: "Kirk",
    103: "James",
    104: "Robert"
]

