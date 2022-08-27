//
//  ListView.swift
//  Home Work 17 Apple Music
//
//  Created by Артем Дербин on 27.08.2022.
//

import SwiftUI

struct ListView: View {
    
    @State var names = [
        Media(name: "Плейлисты", imageNames: "music.note.list"),
        Media(name: "Артисты", imageNames:  "music.mic"),
        Media(name: "Альбомы", imageNames: "square.stack"),
        Media(name: "Песни", imageNames: "music.note"),
        Media(name: "Телешоу и фильмы", imageNames: "tv"),
        Media(name: "Видеоклипы", imageNames: "music.note.tv"),
        Media(name: "Жанры", imageNames: "guitars"),
        Media(name: "Сборники", imageNames: "person.2.crop.square.stack"),
        Media(name: "Авторы", imageNames: "music.quarternote.3"),
        Media(name: "Загружено", imageNames: "square.and.arrow.down"),
        Media(name: "Домашняя коллекция", imageNames: "house")
    ]
    @State var isEditMode: EditMode = .active
    @State var multiSelection = Set<String>()
    var body: some View {
        List(selection: $multiSelection) {
            ForEach( names, id: \.self ) { item in
                HStack {
                    Image(systemName: item.imageNames)
                        .foregroundColor(.red)
                    Text(item.name)
                        .font(Font.system(size: 22))
                }
            }
            .onMove { (indexSet, index) in
                self.names.move(fromOffsets: indexSet,
                                toOffset: index)
            }
        }
        .listStyle(.plain)
        .environment(\.editMode, $isEditMode)
        .navigationBarBackButtonHidden(true)
    }
}


struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
