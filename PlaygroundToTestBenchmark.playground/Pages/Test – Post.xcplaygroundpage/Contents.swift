import Foundation
//
//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write a function that sends a POST request with JSON payload to a given URL and prints the response as a string.

func postData(to urlString: String, payload: [String: Any]) {
    guard let url = URL(string: urlString) else { return }
    
    var request = URLRequest(url: url)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    
    do {
        request.httpBody = try JSONSerialization.data(withJSONObject: payload, options: [])
    } catch {
        print("Error serializing JSON: \(error)")
        return
    }
    
    let task = URLSession.shared.dataTask(with: request) { data, response, error in
        if let error = error {
            print("Error posting data: \(error)")
            return
        }
        guard let data = data else { return }
        if let responseString = String(data: data, encoding: .utf8) {
            print(responseString)
        }
    }
    task.resume()
}



