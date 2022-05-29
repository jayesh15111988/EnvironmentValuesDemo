//
//  EnvironmentValuesDemoApp.swift
//  EnvironmentValuesDemo
//
//  Created by Jayesh Kawli on 5/29/22.
//

import SwiftUI

@main
struct EnvironmentValuesDemoApp: App {
    
    @ObservedObject var environment = AppEnvironment.shared
    
    var body: some Scene {
        WindowGroup {
            MyTestView()
                .environment(\.myStyleEnvironmentValue, environment.style)
                .environmentObject(environment)
        }
    }
}
