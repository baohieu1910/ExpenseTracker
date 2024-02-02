//
//  SceneDelegate.swift
//  ExpenseTracker
//
//  Created by Hieu Le on 2/2/24.
//

import Foundation
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    var coreDataManage: CoreDataManage = CoreDataManage(containerName: "ExpenseTracker")
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let contentView = ContentView()
            .environment(\.managedObjectContext, coreDataManage.viewContext)
        
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: contentView)
            self.window = window
            window.makeKeyAndVisible()
        }
    }
}
