//
//  ContentView.swift
//  NavigationLink
//
//  Created by Zachary Farmer on 5/25/23.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()

    var body: some View {
        NavigationStack(path: $path) {
            List {
                Section("Games") {
                    ForEach(Game.examples) { game in
                        NavigationLink(value: game) {
                            VStack(alignment: .leading) {
                                Text(game.title)
                                
                                Text(game.publisher)
                                    .foregroundColor(.secondary)
                                    .bold()
                            }
                        }
                    }
                }
                Section("Platforms") {
                    ForEach(Platform.example) { platform in
                        NavigationLink(value: platform) {
                            VStack {
                                Text(platform.title)
                            }
                        }
                    }
                }
            }
            .navigationDestination(for: Game.self) { game in
                Text(game.title)
                Button("Pop to Root") {
                    path.removeLast(path.count)
                }
            }
            .navigationDestination(for: Platform.self) {
                platform in
                Text(platform.title)
                Button("Pop to Root") {
                    path.removeLast(path.count)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
