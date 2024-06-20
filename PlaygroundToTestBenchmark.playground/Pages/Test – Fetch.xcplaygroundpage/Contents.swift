
//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write a function that fetches user data from a given URL and prints the response as a string.

import Foundation

func fetchUserData(from urlString: String) {
    guard let url = URL(string: urlString) else { return }

    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            print("Error fetching user data: \(error)")
            return
        }
        guard let data = data else { return }
        if let responseString = String(data: data, encoding: .utf8) {
                   print(responseString)
        }
        print(data)
    }
    task.resume()
}

fetchUserData(from: "https://hse.ru")
