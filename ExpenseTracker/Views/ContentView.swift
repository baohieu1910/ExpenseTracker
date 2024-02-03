//
//  ContentView.swift
//  ExpenseTracker
//
//  Created by Hieu Le on 2/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DashboardTabView()
                .tabItem {
                    VStack {
                        Text("Dashboard")
                        Image(systemName: "chart.pie")
                    }
            }
            .tag(0)
            
            LogsTabView()
                .tabItem {
                    VStack {
                        Text("Logs")
                        Image(systemName: "tray")
                    }
            }
            .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static let manager = CoreDataManage(containerName: "ExpenseTracker")
    
    static var previews: some View {
        ContentView()
            .environmentObject(manager)
            .environment(\.managedObjectContext, manager.viewContext)
    }
}
