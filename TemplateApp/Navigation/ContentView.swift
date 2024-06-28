//
//  ContentView.swift
//  TemplateApp
//
//  Created by Christophe Guégan on 25/06/2024.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    if UIDevice.isIpad {
      SplitView()
    } else {
      TabView {
        DashboardView()
          .tabItem {
            Label("Dashboard", systemImage: "square.dashed")
          }

        // ...
      }
      }
  }
}

#Preview {
    ContentView()
}
