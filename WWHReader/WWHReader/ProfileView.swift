//
//  ProfileView.swift
//  WWHReader
//
//  Created by wangweihu on 2020/8/6.
//

import SwiftUI

struct ProfileView: View {
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

