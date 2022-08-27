//
//  NavigationView.swift
//  Home Work 17 Apple Music
//
//  Created by Артем Дербин on 27.08.2022.
//

import SwiftUI

struct Navigation: View {
    @State var isEditMode: EditMode = .active
    @State var selectionScreen = true
    var body: some View {
        NavigationView {
            VStack {
                if selectionScreen {
                    LibraryView()
                } else {
                    ListView()
                }
            }
            .navigationTitle("Медиатека")
            .environment(\.editMode, $isEditMode)
            .toolbar(content: {
                Button(action: {
                    selectionScreen.toggle()
                }, label: {
                    if selectionScreen {
                        Text("править")
                    } else {
                        Text("готово")
                    }
                })
            })
        }
        .navigationBarBackButtonHidden(false)
    }
}

struct NavigationView_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
