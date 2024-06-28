//
//  Navtabs.swift
//  TemplateApp
//
//  Created by Christophe Guégan on 25/06/2024.
//

import Foundation
import SwiftUI

enum Pages: String, Identifiable, CaseIterable {
    case home
    case profile
    case settings
    case dashboard
    
    var id: Pages {
        self
    }
    
    var icon: String {
        switch self {
        case .home:
            return "house"
        case .profile:
            return "person"
        case .settings:
            return "gear"
        case .dashboard:
            return "square.grid.2x2"
        }
    }
    
    var text: String {
        switch self {
        case .home:
            return "Home"
        case .profile:
            return "Profile"
        case .settings:
            return "Settings"
        case .dashboard:
            return "Dashboard"
        }
    }
    
    var isMainTabbar: Bool {
        switch self {
            
        case .home:
            return true
        case .profile:
            return true
        case .settings:
            return true
        case .dashboard:
            return false
        }
    }
    
    @ViewBuilder 
    var label: some View {
        Label(self.rawValue, systemImage: self.icon)
    }
    
    @ViewBuilder
    var destination: some View {
        switch self {
        case .home:
            HomeView()
        case .profile:
            ProfileView()
        case .settings:
            SettingsView()
        case .dashboard:
            DashboardView()
        }
    }
    
}
