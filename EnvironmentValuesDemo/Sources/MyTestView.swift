//
//  MyTestView.swift
//  MyTestView
//
//  Created by Jayesh Kawli on 5/29/22.
//

import SwiftUI

struct MyTestView: View {
    
    @Environment(\.myStyleEnvironmentValue) var style: Style
    @EnvironmentObject var environmentObject: AppEnvironment
    
    var body: some View {
        
        VStack(spacing: 16) {

            // A title to indicate currently selected style
            Text("Current Style: ") + Text(style.name).bold()
            
            // Change the current app style
            Button("Default Style") {
                environmentObject.style = BaseStyle()
            }
            
            Button("Golden Style") {
                environmentObject.style = GoldenStyle()
            }
            
            Button("Green Style") {
                environmentObject.style = GreenStyle()
            }
            
            // Regular screen content decorated using Style
            VStack {
                Text("Welcome to Test Screen\n")
                Text("On this screen you will do a lot of experiments\n")
                Text("We will be there with you. Enjoy\n")
            }
            .foregroundColor(style.foregroundColor)
            .background(style.backgroundColor)
        }
    }
}

