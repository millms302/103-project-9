import UIKit

// CREATE

var fruitsArray: [String] = ["Banana", "Apple", "Orange"]
var fruitsSet: Set<String> = ["Banana", "Apple", "Orange"]

var fruitsDictionary: [String:String] = [
    "Yellow": "Banana",
    "Red": "Apple",
    "Orange": "Orange"
]

print("Original Array: \(fruitsArray)")
print("Original Set \(fruitsSet)")
print("Original Dictionary \(fruitsDictionary)")

// ADD ELEMENTS
//Array -> Append
fruitsArray.append("Mango")

//Set -> Insert
fruitsSet.insert("Mango")

//Dictionary -> assign new key-value
fruitsDictionary["Green"] = "Mango"

print("---ADD---")
print("Added Array: \(fruitsArray)")
print("Added Set \(fruitsSet)")
print("Added Dictionary \(fruitsDictionary)")

//Remove Elements:
// Array -> remove by position
fruitsArray.remove(at: 0)
// Set -> remove by element name
fruitsSet.remove("Banana")
// Dictionary -> remove by key
fruitsDictionary.removeValue(forKey: "yellow")

print("---REMOVE---")
print("Remove Array: \(fruitsArray)")
print("Remove Set \(fruitsSet)")
print("Remove Dictionary \(fruitsDictionary)")

//SEARCH ELEMENT
// Array -> contains
print("Array Contains Apple? -> \(fruitsArray.contains("Apple"))")
// Set -> contains
print("Set Contains Mango? -> \(fruitsArray.contains("Apple"))")
//Dictionary -> contains
print("Dictionary Contains Orange? -> \(fruitsDictionary.values.contains("Orange"))")

// ITERATE/LOOP
print("\n--- LOOP ---")
print("Array Values:")
for fruit in fruitsArray {print("I like \(fruit)s")}


print("\nSet Values:")
for fruit in fruitsSet {
    print(fruit)
}
print("\nDictionary Values:")
for (key, value) in fruitsDictionary {
    print("\(key): \(value)")
}

// How To Sort:
//SORTING

print("\n--- Sorting ---")
print("Sorted Array: \(fruitsArray.sorted(by:>))")
print("Sorted Set: \(fruitsSet.sorted(by:<))")

let sortedByKey = fruitsDictionary.sorted { $0 < $1 }
print("Sorted Dictionary by Key \(sortedByKey)")
