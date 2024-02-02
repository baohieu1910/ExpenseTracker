//
//  CoreDataManage.swift
//  ExpenseTracker
//
//  Created by Hieu Le on 2/2/24.
//

import Foundation
import CoreData

class CoreDataManage {
    private let containerName: String
    var viewContext: NSManagedObjectContext { persistentContainer.viewContext }
    
    private var persistentContainer: NSPersistentContainer
    
    init(containerName: String) {
        self.containerName = containerName
        self.persistentContainer = {
            let container = NSPersistentContainer(name: containerName)
            container.loadPersistentStores { storeDescription, error in
                if let error = error as NSError? {
                    print(error.localizedDescription)
                }
                print(storeDescription)
            }
            return container
        }()
    }
}

extension NSManagedObjectContext {
    func saveContext() throws {
        guard hasChanges else {
            return
        }
        try save()
    }
}
