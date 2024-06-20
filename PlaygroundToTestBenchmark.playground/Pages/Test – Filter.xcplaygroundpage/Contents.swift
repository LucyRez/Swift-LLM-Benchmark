//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write a function to filter out all the even numbers from an array of integers.


func filterEvenNumbers(_ numbers: [Int]) -> [Int] {
    return numbers.filter { $0 % 2 != 0 }
}
