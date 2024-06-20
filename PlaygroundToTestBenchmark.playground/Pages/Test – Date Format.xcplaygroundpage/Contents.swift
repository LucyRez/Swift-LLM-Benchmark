//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write a function that formats a date to a string in the format "yyyy-MM-dd".

import Foundation

func formatDate(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "yyyy-MM-dd"
    return formatter.string(from: date)
}
