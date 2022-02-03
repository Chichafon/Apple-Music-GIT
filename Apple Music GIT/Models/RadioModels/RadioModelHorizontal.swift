//
//  RadioModel.swift
//  Apple Music GIT
//
//  Created by 111 on 03.02.2022.
//

import Foundation

struct RadioModelHorizontal: Hashable {
    let id = UUID()
    let firstTitle: String
    let secondTitle: String
    let thirdTitle: String
    let image: String
}

extension RadioModelHorizontal {
    static let data = [
        RadioModelHorizontal(firstTitle: "НОВЫЙ ВЫПУСК",
                             secondTitle: "Музыкальный базар с Бастой",
                             thirdTitle: "Новое шоу",
                             image: "musicBazarBasta"),
        RadioModelHorizontal(firstTitle: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
                             secondTitle: "Популярное",
                             thirdTitle: "То, что слушают прямо сейчас",
                             image: "popularRadio"),
        RadioModelHorizontal(firstTitle: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
                             secondTitle: "Хип-хоп",
                             thirdTitle: "Идеальные биты и рифмы",
                             image: "hipHop"),
        RadioModelHorizontal(firstTitle: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
                             secondTitle: "Только поп-музыка",
                             thirdTitle: "Все топ-хиты.",
                             image: "popMusic"),
        RadioModelHorizontal(firstTitle: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
                             secondTitle: "Поп-музыка для тренировок",
                             thirdTitle: "Вперед и с музыкой!",
                             image: "popMusicTrain"),
        RadioModelHorizontal(firstTitle: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
                             secondTitle: "Электронная музыка",
                             thirdTitle: "Пульт с лучшими треками.",
                             image: "electroMusic"),
        RadioModelHorizontal(firstTitle: "НОВАЯ РАДИОСТАНЦИЯ",
                             secondTitle: "Классика рока",
                             thirdTitle: "Гении гитарного звука.",
                             image: "classicRock"),
        RadioModelHorizontal(firstTitle: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
                             secondTitle: "Танцевальная музыка",
                             thirdTitle: "Современные и будущие хиты.",
                             image: "danceMusic")
    ]
}
