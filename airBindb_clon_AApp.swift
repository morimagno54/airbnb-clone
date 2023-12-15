//
//  airBindb_clon_AApp.swift
//  airBindb-clon-A
//
//  Created by MAC37 on 3/11/23.
//

import SwiftUI

@main
struct airBindb_clon_AApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var appState: Appstate = .shared
    
    var body: some Scene {
        WindowGroup {
            switch appState.currentScreen{
            case .login:
                LoginView()
            case .main:
                MainView()
            }
        }
    }
}
