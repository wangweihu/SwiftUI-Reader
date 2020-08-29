//
//  Store.swift
//  WWHReader
//
//  Created by wangweihu on 2020/8/21.
//

import CoreData

struct Store {
    // Core data使用的第一步就是创建Core Data Stack
    let persistentContainer: NSPersistentContainer = {
        let persistentContainer = NSPersistentContainer(name: "WWHDBModel")
        persistentContainer.loadPersistentStores { desc, error in
            if error != nil {
                print("persistentContainer create successful : \(desc)")
            } else {
                print("persistentContainer create failed with error : \(error?.localizedDescription ?? "")")
            }
        }
        return persistentContainer
    }()

    // MARK: - save

    func saveContext() {
        // 与主队列关联的管理对象上下文
        let viewContext = persistentContainer.viewContext

        if viewContext.hasChanges {
            do {
                try viewContext.save()
            } catch {
                print("Unresolved error")
            }
        }
    }
}
