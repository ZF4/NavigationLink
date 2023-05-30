//
//  DetailView.swift
//  NavigationLink
//
//  Created by Zachary Farmer on 5/25/23.
//

import SwiftUI

struct DetailView: View {
    var color: Color
    var body: some View {
        color.navigationTitle(color.description)
        }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(color: .blue)
    }
}
