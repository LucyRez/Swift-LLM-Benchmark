Instruction: Your task is to generate code in Swift for an iOS application following the given description.

Input: Write a function that fetches image data from a given URL and updates an UIImageView with the downloaded image.


import Foundation
import UIKit

func fetchImage(from urlString: String, imageView: UIImageView) {
    guard let url = URL(string: urlString) else { return }

    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            print("Error fetching image: \(error)")
            return
        }
        guard let data = data, let image = UIImage(data: data) else { return }
        DispatchQueue.main.async {
            imageView.image = image
        }
    }
    task.resume()
}
