//
//  TabView.swift
//  TemplateApp
//
//  Created by Christophe Guégan on 25/06/2024.
//

import SwiftUI

struct iPhoneView: View {
    
    @Binding var selection: Pages?
    
    var body: some View {
        NavigationStack {
            TabView(selection: $selection) {
                ForEach(Pages.allCases) { screen in
                    screen.destination
                        .tag(screen as Pages?)
                        .tabItem { screen.label }
                }
            }
        }
    }
}

#Preview {
    iPhoneView(selection: .constant(.home))
}
