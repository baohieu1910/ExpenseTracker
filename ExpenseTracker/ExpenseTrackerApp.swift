//
//  ExpenseTrackerApp.swift
//  ExpenseTracker
//
//  Created by Hieu Le on 2/2/24.
//

import SwiftUI


@main
struct ExpenseTrackerApp: App {
    @StateObject private var manager: CoreDataManage = CoreDataManage(containerName: "ExpenseTracker")
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(manager)
                .environment(\.managedObjectContext, manager.viewContext)
        }
    }
}
