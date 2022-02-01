//
//  LibraryModel.swift
//  Apple Music GIT
//
//  Created by 111 on 01.02.2022.
//

import Foundation

struct LibraryModel: Hashable {
    let image: String
    let title: String
}

extension LibraryModel {
    static var data = [
        LibraryModel(image: "music.note.list", title: "Плейлисты"),
        LibraryModel(image: "music.mic", title: "Артисты"),
        LibraryModel(image: "rectangle.stack", title: "Альбомы"),
        LibraryModel(image: "music.note", title: "Песни"),
        LibraryModel(image: "airplayvideo", title: "Телешоу и фильмы"),
        LibraryModel(image: "tv.music.note.fill", title: "Видеоклипы"),
        LibraryModel(image: "guitars", title: "Жанры"),
        LibraryModel(image: "person.crop.rectangle.stack", title: "Сборники"),
        LibraryModel(image: "music.quarternote.3", title: "Авторы"),
        LibraryModel(image: "arrow.down.circle", title: "Загружено"),
        LibraryModel(image: "music.note.house", title: "Домашняя коллекция")
    ]
}
