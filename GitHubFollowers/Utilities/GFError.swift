//
//  ErrorMessage.swift
//  GitHubFollowers
//
//  Created by Vitor Capretz on 10/06/22.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username createad an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "Received invalid data from the server. Please try again."
    case unableToFavorite = "There was an error favoriting this user. Please try again"
}
