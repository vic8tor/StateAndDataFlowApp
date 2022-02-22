//
//  StateAndDataFlowAppApp.swift
//  StateAndDataFlowApp
//
//  Created by Victor on 21.02.2022.
//

import SwiftUI

@main
struct StateAndDataFlowAppApp: App {
    @StateObject private var userManager = UserManager()
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .environmentObject(userManager)
        }
    }
}
