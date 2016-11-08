//: # Closures
let grades = [98, 75, 100, 55, 60, 70]
//: **(1)** `sorted` is a method available to instances of `Array`s.  Use `sorted` to create a new array where the grades are in descending order.
let sortedArray = grades.sorted { (a, b) -> Bool in
    return a > b
}
print("sortedArray \(sortedArray)")










//: **(2)** `filter` is a method available to instances of `Array`s.  Use `filter` to create a new array where we're left with all grades under 70.
let filteredArray = grades.filter { (a) -> Bool in
    return a <= 75
}

print("filteredArray \(filteredArray)")










//: **(3)** `map` is a method available to instances of `Array`s.  Use `map` to create a new array where we add 20 to the grades that are under 80. For example, 98 remains the same but 55 should become 75 in our new array.

let mappedArray = grades.map { (a) -> Int in
    if a < 80 {
        return a + 20
    } else {
        return a
    }
}

print("mappedArray \(mappedArray)")










//: **(4)** `reduce` is a method available to instances of `Array`s.  Use `reduce` to figure out the sum of all the grades.

let reducedArray = grades.reduce(0) { (result, a) -> Int in
    return result + a
}
print("reducedArray \(reducedArray)")







//: **(5)** Call on this `greet(person:with:)` function, passing it the necessary arguments for it to run without error. After doing that, write up a paragraph that describes exactly what's going on here. Write this paragraph stepping through every part of the process, providing as much detail as possible. As if you're explaining it to a five year old.


func greet(person: String, with greeting: (String) -> String) {
    
    let response = greeting(person)
    
    print(response)
    
}



// Call on the greet function here

greet(person: "Doug") { (name: String) -> String in

    return "Hello \(name)"


}

func secondName(name: String) -> String {
    
    return "Hello \(name)"
}

greet(person: "Galante", with: secondName)








/*

 **** CREATING THE GREET FUNCTION ****
 
The greet function has two parameters, PERSON of type String and GREETING of type (String) -> String.
GREETING is called to assign a value to RESPONSE constant (at this point we enter the closure to retrieve that value)
RESPONSE is printed
 
 
 **** CALLING THE FUNCTION ***
 
 We call GREET and pass it "Doug" for person and create a trailing closure for GREETING
 The trailing closure syntax first shows the function being called followed by the in keyword do designate that functions implementation
 In the original implementation of greet we pass PERSON as the parameter for greeting...
 So NAME becomes "Doug"
 we then return the string "Hello Doug" by interpolating the value of NAME "Hello \(name)"
 That value is returned to RESPONSE and printed.
 
 
 
 */
