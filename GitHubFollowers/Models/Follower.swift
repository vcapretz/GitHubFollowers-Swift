//
//  Follower.swift
//  GitHubFollowers
//
//  Created by Vitor Capretz on 10/06/22.
//

import Foundation

struct Follower: Codable, Hashable {
    var login: String
    var avatarUrl: String
}
