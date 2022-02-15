//
//  RadioModel.swift
//  Apple Music GIT
//
//  Created by 111 on 03.02.2022.
//

import Foundation

struct RadioModelHorizontalSection: Hashable, Identifiable {
    let id = UUID()
    let firstTitle: String
    let secondTitle: String
    let thirdTitle: String
    let image: String
}

extension RadioModelHorizontalSection {

    static let data = [
        RadioModelHorizontalSection(firstTitle: "НОВЫЙ ВЫПУСК",
                                    secondTitle: "Музыкальный базар",
                                    thirdTitle: "Новое шоу",
                                    image: "musicBazarBasta"),
        RadioModelHorizontalSection(firstTitle: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
                                    secondTitle: "Популярное",
                                    thirdTitle: "То, что слушают прямо сейчас",
                                    image: "popularRadio"),
        RadioModelHorizontalSection(firstTitle: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
                                    secondTitle: "Хип-хоп",
                                    thirdTitle: "Идеальные биты и рифмы",
                                    image: "hipHop"),
        RadioModelHorizontalSection(firstTitle: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
                                    secondTitle: "Только поп-музыка",
                                    thirdTitle: "Все топ-хиты.",
                                    image: "popMusic"),
        RadioModelHorizontalSection(firstTitle: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
                                    secondTitle: "Поп-музыка для тренировок",
                                    thirdTitle: "Вперед и с музыкой!",
                                    image: "popMusicTrain"),
        RadioModelHorizontalSection(firstTitle: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
                                    secondTitle: "Электронная музыка",
                                    thirdTitle: "Пульт с лучшими треками.",
                                    image: "electroMusic"),
        RadioModelHorizontalSection(firstTitle: "НОВАЯ РАДИОСТАНЦИЯ",
                                    secondTitle: "Классика рока",
                                    thirdTitle: "Гении гитарного звука.",
                                    image: "classicRock"),
        RadioModelHorizontalSection(firstTitle: "ИЗБРАННАЯ РАДИОСТАНЦИЯ",
                                    secondTitle: "Танцевальная музыка",
                                    thirdTitle: "Современные и будущие хиты.",
                                    image: "danceMusic")
    ]
}
