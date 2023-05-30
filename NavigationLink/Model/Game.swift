//
//  Model1.swift
//  NavigationLink
//
//  Created by Zachary Farmer on 5/29/23.
//

import Foundation

struct Game: Hashable, Identifiable {
    let id = UUID()
    let title: String
    let publisher: String
}

extension Game {
    static let examples: [Game] = [
        .init(title: "Call of Duty", publisher: "Activision"),
        .init(title: "Grand Theft Auto", publisher: "Rockstar"),
        .init(title: "Counter Strike", publisher: "Valve")
    ]
}
