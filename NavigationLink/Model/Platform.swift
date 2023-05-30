//
//  Model2.swift
//  NavigationLink
//
//  Created by Zachary Farmer on 5/29/23.
//

import Foundation

struct Platform: Hashable, Identifiable {
    let id = UUID()
    let title: String
}

extension Platform {
    static let example: [Platform] = [
        .init(title: "Xbox"),
        .init(title: "Playstation"),
        .init(title: "PC")
    ]
}
