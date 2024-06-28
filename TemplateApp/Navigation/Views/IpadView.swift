//
//  SplitView.swift
//  TemplateApp
//
//  Created by Christophe Guégan on 25/06/2024.
//

import SwiftUI

struct IpadView: View {
    
    @Binding var selection: Pages?
    
    var body: some View {
        NavigationSplitView {
            SidebarView(selection: $selection)
        } detail: {
            HomeView()
        }
    }
}

#Preview {
    IpadView(selection: .constant(.home))
}
