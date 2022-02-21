//
//  RadioModelVertical.swift
//  Apple Music GIT
//
//  Created by 111 on 03.02.2022.
//

import Foundation

struct RadioModelVerticalSection: Hashable {
    let id = UUID()
    let firstTitle: String
    let secondTitle: String
    let image: String
}

extension RadioModelVerticalSection {
    static let data = [
        RadioModelVerticalSection(firstTitle: "The Zane Lowe Show",
                                  secondTitle: "Apple Music",
                                  image: "zaneLoweShow"),
        RadioModelVerticalSection(firstTitle: "Up Next Radio",
                                  secondTitle: "Apple Music",
                                  image: "upNextRadio"),
        RadioModelVerticalSection(firstTitle: "Для расслабления",
                                  secondTitle: "Электронная медитация.",
                                  image: "africaNowRadio"),
        RadioModelVerticalSection(firstTitle: "Классика рoка",
                                  secondTitle: "Гитарный звук.",
                                  image: "classicRock"),
        RadioModelVerticalSection(firstTitle: "Хип-хоп",
                                  secondTitle: "Идеальные биты.",
                                  image: "rapLifeRadio"),
        RadioModelVerticalSection(firstTitle: "Музыка 90-х",
                                  secondTitle: "Зажигай.",
                                  image: "africaNowRadio"),
        RadioModelVerticalSection(firstTitle: "RnB",
                                  secondTitle: "Будь в движении.",
                                  image: "superBloomRadio"),
        RadioModelVerticalSection(firstTitle: "Музыка 90-х",
                                  secondTitle: "Зажигай",
                                  image: "classicRock"),
        RadioModelVerticalSection(firstTitle: "The Zane Lowe Show",
                                  secondTitle: "Apple Music",
                                  image: "zaneLoweShow"),
        RadioModelVerticalSection(firstTitle: "Up Next Radio",
                                  secondTitle: "Apple Music",
                                  image: "upNextRadio"),
        RadioModelVerticalSection(firstTitle: "africaNowRadio",
                                  secondTitle: "Для расслабления",
                                  image: "africaNowRadio"),
        RadioModelVerticalSection(firstTitle: "classicRock",
                                  secondTitle: "Классика рokа",
                                  image: "classicRock")
    ]
}
