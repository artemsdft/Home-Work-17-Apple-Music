//
//  TabBar.swift
//  Home Work 17 Apple Music
//
//  Created by Артем Дербин on 27.08.2022.
//

import SwiftUI

struct TabBar: View {
    @State var current = 0
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView(selection: $current) {
                Nav()
                    .tag(0)
                    .tabItem {
                        Image(systemName: "music.note.list")
                        Text("Медиатека")
                    }
                Text("Радио")
                    .tag(1)
                    .tabItem {
                        Image(systemName: "dot.radiowaves.left.and.right")
                        Text("Радио")
                    }
                Text("Поиск")
                    .tag(2)
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Поиск")
                    }
            }
            .accentColor(.red)
            MiniPlayer()
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
