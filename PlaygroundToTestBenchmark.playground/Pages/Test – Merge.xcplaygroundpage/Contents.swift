//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write a function that merges two arrays of integers and removes duplicates.


func mergeAndRemoveDuplicates(_ array1: [Int], _ array2: [Int]) -> [Int] {
    return Array(Set(array1 + array2))
}
