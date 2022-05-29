//
//  Style.swift
//  Style
//
//  Created by Jayesh Kawli on 5/29/22.
//

import SwiftUI

protocol Style {
    var foregroundColor: Color { get }
    var backgroundColor: Color { get }
    var name: String {get }
}

struct BaseStyle: Style {
    var foregroundColor: Color {
        Color.black
    }
    
    var backgroundColor: Color {
        Color.white
    }
    
    var name: String {
        "Base"
    }
}

struct GoldenStyle: Style {
    var foregroundColor: Color {
        Color(red: 1, green: 0.843, blue: 0, opacity: 1.0)
    }
    
    var backgroundColor: Color {
        Color(red: 0.878, green: 0.043, blue: 0.345, opacity: 1.0)
    }
    
    var name: String {
        "Golden"
    }
}

struct GreenStyle: Style {
    var foregroundColor: Color {
        Color(red: 0.255, green: 0.388, blue: 0.0588, opacity: 1.0)
    }
    
    var backgroundColor: Color {
        Color(red: 0.345, green: 0.0313, blue: 0.235, opacity: 1.0)
    }
    
    var name: String {
        "Green"
    }
}

