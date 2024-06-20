//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write a function that fetches weather data from a given URL, decodes the JSON response into a Weather object, and prints the temperature.

import Foundation

struct Weather: Decodable {
    let temperature: Double
}

func fetchWeather(from urlString: String) {
    guard let url = URL(string: urlString) else { return }
    
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            print("Error fetching weather data: \(error)")
            return
        }
        guard let data = data else { return }
        do {
            let weather = try JSONDecoder().decode(Weather.self, from: data)
            print("Temperature: \(weather.temperature)")
        } catch {
            print("Error decoding JSON: \(error)")
        }
    }
    task.resume()
}

