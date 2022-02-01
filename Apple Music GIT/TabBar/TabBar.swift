//
//  ContentView.swift
//  Apple Music GIT
//
//  Created by 111 on 01.02.2022.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            LibraryView()
                .tabItem {
                    Image(systemName: "rectangle.stack.badge.play")
                    Text("Медиатека")
                }
            Text("")
                .tabItem {
                    Image(systemName: "dot.radiowaves.left.and.right")
                    Text("Радио")
                }

            Text("")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Поиск")
                }
        }
        .accentColor(Color.red)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
