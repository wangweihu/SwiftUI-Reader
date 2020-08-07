//
//  ContentView.swift
//  WWHReader
//
//  Created by wangweihu on 2020/8/4.
//

import SwiftUI

struct HomeView2: View {
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

class Counter: ObservableObject {
    @Published var count : Int = 0
}

struct CounterView: View {
//    @ObservedObject var counter = Counter()
    @StateObject var counter = Counter()
    
    var body: some View {
        Text("CounterView count number")
        Text("CounterView count number")
        Text("CounterView count number")
        
        
        VStack {
            Text("CounterView count number")
            Text("\(counter.count)")
            Button("Increment CounterView count") {
                counter.count += 1
            }
        }.padding()
        .background(Color.red)
    }
}

struct StateObjectDemo: View {
    @State private var value = 0
    
    // @AppStorage() 强大之处 UserDefaults
    // 当值更改时，它将自动重新调用视图的body属性
    // 如果该键更改，将刷新您的UI
    @AppStorage("isDarkMode")
    private var isDarkMode : Bool = false
    
    var body: some View {
        VStack {
            Text("ContentView count number")
            Text("\(value)")
            Button("Increment ContentView value") {
                value += 1
            }
            CounterView()
            
            VStack {
                Text(isDarkMode ? "DARK" : "LIGHT")
                Toggle(isOn: $isDarkMode) {
                    Text("Select mode")
                }.fixedSize()
            }.padding()
            .background(Color.yellow)
        }.padding()
        .background(Color.green)
    }
}

struct ContentView: View {
    @State private var value = 0
    
    // @AppStorage() 强大之处 UserDefaults
    // 当值更改时，它将自动重新调用视图的body属性
    // 如果该键更改，将刷新您的UI
    @AppStorage("isDarkMode")
    private var isDarkMode : Bool = false
    
    var body: some View {
        VStack {
            Text("ContentView count number")
            Text("\(value)")
            Button("Increment ContentView value") {
                value += 1
            }
            CounterView()
            
            VStack {
                Text(isDarkMode ? "DARK" : "LIGHT")
                Toggle(isOn: $isDarkMode) {
                    Text("Select mode")
                }.fixedSize()
            }.padding()
            .background(Color.yellow)
        }.padding()
        .background(Color.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
