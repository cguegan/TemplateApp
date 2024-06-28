//
//  SidebarView.swift
//  TemplateApp
//
//  Created by Christophe Guégan on 25/06/2024.
//

import SwiftUI

struct SidebarView: View {
    
    @Binding var selection: Pages?
    
    var body: some View {
        List {
          NavigationLink(destination: DashboardView()) {
            Label("Dashboard", systemImage: "square.dashed")
          }

          // ...
        }
    }
}

#Preview {
    SidebarView(selection: .constant(.home))
}
