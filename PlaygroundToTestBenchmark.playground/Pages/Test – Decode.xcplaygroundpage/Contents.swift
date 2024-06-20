//Instruction: Your task is to generate code in Swift for an iOS application following the given description.
//
//Input: Write a function that fetches a list of posts from a given URL and decodes the JSON response into an array of Post objects.

import Foundation

struct Post: Decodable {
    let id: Int
    let title: String
    let body: String
}

func fetchPosts(from urlString: String, completion: @escaping ([Post]?) -> Void) {
    guard let url = URL(string: urlString) else { return }
    
    let task = URLSession.shared.dataTask(with: url) { data, response, error in
        if let error = error {
            print("Error fetching posts: \(error)")
            completion(nil)
            return
        }
        guard let data = data else {
            completion(nil)
            return
        }
        do {
            let posts = try JSONDecoder().decode([Post].self, from: data)
            completion(posts)
        } catch {
            print("Error decoding JSON: \(error)")
            completion(nil)
        }
    }
    task.resume()
}
