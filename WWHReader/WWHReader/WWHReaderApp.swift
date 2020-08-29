//
//  WWHReaderApp.swift
//  WWHReader
//
//  Created by wangweihu on 2020/8/4.
//

import CoreData
import SwiftUI

@main
struct WWHReaderApp: App {
//    @State 简单值类型（例如Bool，Int或String）
    @StateObject var appModel = AppModel()

    var body: some Scene {
        WindowGroup {
            TabView {
                HomeView().tabItem {
                    Image(systemName: "list.bullet.below.rectangle")
                    Text("列表").environment(\.managedObjectContext, appModel.store.persistentContainer.viewContext)
                }
                RecommendView().tabItem {
                    Image(systemName: "gear")
                    Text("设置")
                }
                DeskView().tabItem {
                    Image(systemName: "list.bullet.below.rectangle")
                    Text("列表")
                }
                ProfileView().tabItem {
                    Image(systemName: "list.bullet.below.rectangle")
                    Text("列表")
                }
            }
//            .tabViewStyle(PageTabViewStyle())
        }
    }
}
