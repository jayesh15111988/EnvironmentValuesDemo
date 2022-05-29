//
//  AppEnvironment.swift
//  AppEnvironment
//
//  Created by Jayesh Kawli on 5/29/22.
//

import Foundation
import SwiftUI

private struct MyStyleEnvironmentKey: EnvironmentKey {
    static let defaultValue: Style = BaseStyle()
}

extension EnvironmentValues {
    var myStyleEnvironmentValue: Style {
        get { self[MyStyleEnvironmentKey.self] }
        set { self[MyStyleEnvironmentKey.self] = newValue }
    }
}

extension View {
    func myCustomEnvironmentStyleValue(_ myCustomEnvironmentStyleValue: Style) -> some View {
        environment(\.myStyleEnvironmentValue, myCustomEnvironmentStyleValue)
    }
}

final class AppEnvironment: ObservableObject {
    static let shared = AppEnvironment()
    
    @Published var style: Style
    
    init(style: Style = BaseStyle()) {
        self.style = style
    }
}

