//
//  HomeView.swift
//  WWHReader
//
//  Created by wangweihu on 2020/8/6.
//

import SwiftUI

struct HomeView: View {
    let items = ["Chocolate", "Vanilla", "Strawberry", "Mint Chip", "Pistachio"]

    /// Use `navigationBarTitle(_:)` to set the title of the navigation bar.
    /// This modifier only takes effect when this view is inside of and visible
    /// within a ``NavigationView``.

    @Environment(\.managedObjectContext) var viewContext

    let text = "Today's Flavors"
    var body: some View {
        NavigationView {
            VStack {
                Button {
                    try? viewContext.save()
                } label: {
                    Text("Save")
                }
            }
        }
    }
}
