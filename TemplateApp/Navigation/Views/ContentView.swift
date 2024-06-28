//
//  ContentView.swift
//  TemplateApp
//
//  Created by Christophe Guégan on 25/06/2024.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @AppStorage("MyTabCustomization") private var customisation: TabViewCustomization
    @State var selection: Pages = .home
    
    var body: some View {
        TabView(selection: $selection) {
            ForEach(Pages.allCases) { page in
                if page.isMainTabbar {
                    Tab(page.text, systemImage: page.icon, value: page) {
                        page.destination
                    }
                    .customizationBehavior(.disabled, for: .sidebar, .tabBar)
                }
            }
            
            TabSection("Collection") {
                Tab("Dashboard", systemImage: Pages.dashboard.icon, value: Pages.dashboard) {
                    DashboardView()
                }
                .hidden(horizontalSizeClass == .compact)
            }
            .tabPlacement(.sidebarOnly)
        }
        .tabViewStyle(.sidebarAdaptable)
        .tabViewCustomization($customisation)
    }
}

#Preview {
    ContentView()
}
