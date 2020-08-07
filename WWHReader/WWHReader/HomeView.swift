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
    
    let text = "Today's Flavors"
    var body: some View {
        NavigationView {
            VStack {
            Text("This is a wide text element  the title of the navigati")
                         .font(.body)
                         .frame(width: 200, height: 50, alignment: .leading)
                         .lineLimit(1)
                         .allowsTightening(true)
                         .textCase(.uppercase)
            
//                     Text("This is a wide text element")
//                    .font(.body)
//                         .frame(width: 200, height: 50, alignment: .leading)
//                         .lineLimit(1)
//                         .allowsTightening(false)
//
//
//                Text("This is a block of text that will show up in a text element as multiple lines. The text will fill the available space, and then, eventually, be truncated.")
//                         .frame(width: 150, height: 150)
//                         .truncationMode(.tail)
                
                Text("This is a string in a TextField with 10 point spacing applied between the bottom of one line and the top of the next.")
                         .frame(width: 200, height: 200, alignment: .leading)
                         .lineSpacing(15)
                 }
                
//            List(items, id: \.self) {
//                Text($0)
//            }
//            .navigationBarTitle(text) // 最普通的字符串
//            .navigationBarTitle("Today's Flavors", displayMode: .inline) // LocalizedStringKey
//            .navigationBarTitle(Text("Today's Flavors")) // Custom view
        }
    }
}
