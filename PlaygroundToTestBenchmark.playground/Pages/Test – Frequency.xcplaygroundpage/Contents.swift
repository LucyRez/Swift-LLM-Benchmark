//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write a function that returns a dictionary with the frequency count of each character in a given string.

func characterFrequency(_ str: String) -> [Character: Int] {
    var frequencyDict = [Character: Int]()
    for char in str {
        frequencyDict[char, default: 0] += 1
    }
    return frequencyDict
}

