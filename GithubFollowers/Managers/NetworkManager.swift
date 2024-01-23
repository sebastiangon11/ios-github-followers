//
//  NetworkManager.swift
//  GithubFollowers
//
//  Created by Seba Gonzalez on 23/01/2024.
//

import Foundation

class NetworkManager {
    static let shared = NetworkManager()
    
    let baseURL = "https://api.github.com/users"
    
    private init() {}
    
    func getFollowers(for username: String, page: Int, completed: @escaping (Result<[Follower], GFError>) -> Void) {
        let endpoint = "\(baseURL)/\(username)/followers?per_page=100&page=\(page)"
        
        guard let url = URL(string: endpoint) else {
            completed(.failure(GFError.invalidUsername))
            return
        }
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let _ = error {
                completed(.failure(GFError.unableToCoplete))
                return
            }
            
            guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
                completed(.failure(GFError.invalidResponse))
                return
            }
            
            guard let data = data else {
                completed(.failure(GFError.invalidData))
                return
            }
            
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                
                let followers = try decoder.decode([Follower].self, from: data)
                
                completed(.success(followers))
            } catch {
                completed(.failure(GFError.invalidData))
            }
        }
        
        task.resume()
    }
}
