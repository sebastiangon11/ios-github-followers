//
//  ErrorMessage.swift
//  GithubFollowers
//
//  Created by Seba Gonzalez on 23/01/2024.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToCoplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Pleas try again."
    case invalidData = "The data received from the server was invalid. Pleas try again."
}
