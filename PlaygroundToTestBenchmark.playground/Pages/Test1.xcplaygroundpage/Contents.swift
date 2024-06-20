
//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write a function for sorting entities of User by their lastName property.



import Foundation

// Define the User struct
struct User {
    var firstName: String
    var lastName: String
}

// Function to sort users by their last name
func sortUsersByLastName(_ users: [User]) -> [User] {
    return users.sorted(by: { $0.lastName < $1.lastName })
}

// Example usage
let users = [
    User(firstName: "John", lastName: "Doe"),
    User(firstName: "Jane", lastName: "Smith"),
    User(firstName: "Alice", lastName: "Johnson"),
    User(firstName: "Bob", lastName: "Brown")
]

let sortedUsers = sortUsersByLastName(users)

for user in sortedUsers {
    print("\(user.firstName) \(user.lastName)")
}
