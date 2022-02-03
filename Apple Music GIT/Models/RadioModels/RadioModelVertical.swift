//
//  RadioModelVertical.swift
//  Apple Music GIT
//
//  Created by 111 on 03.02.2022.
//

import Foundation

struct RadioModelVertical: Hashable {
    let id = UUID()
    let firstTitle: String
    let secondTitle: String
    let image: String
}

extension RadioModelVertical {
    static let data = [
        RadioModelVertical(firstTitle: "The Zane Lowe Show",
                           secondTitle: "Apple Music",
                           image: "zaneLoweShow"),
        RadioModelVertical(firstTitle: "Up Next Radio",
                           secondTitle: "Apple Music",
                           image: "upNextRadio"),
        RadioModelVertical(firstTitle: "Для расслабления",
                           secondTitle: "Электронная медитация.",
                           image: "africaNowRadio"),
        RadioModelVertical(firstTitle: "Классика рoка",
                           secondTitle: "Гитарный звук.",
                           image: "classicRock"),
        RadioModelVertical(firstTitle: "Хип-хоп",
                           secondTitle: "Идеальные биты.",
                           image: "rapLifeRadio"),
        RadioModelVertical(firstTitle: "Музыка 90-х",
                           secondTitle: "Зажигай.",
                           image: "africaNowRadio"),
        RadioModelVertical(firstTitle: "RnB",
                           secondTitle: "Будь в движении.",
                           image: "superBloomRadio"),
        RadioModelVertical(firstTitle: "Музыка 90-х",
                           secondTitle: "Зажигай",
                           image: "classicRock"),
        RadioModelVertical(firstTitle: "The Zane Lowe Show",
                           secondTitle: "Apple Music",
                           image: "zaneLoweShow"),
        RadioModelVertical(firstTitle: "Up Next Radio",
                           secondTitle: "Apple Music",
                           image: "upNextRadio"),
        RadioModelVertical(firstTitle: "africaNowRadio",
                           secondTitle: "Для расслабления",
                           image: "africaNowRadio"),
        RadioModelVertical(firstTitle: "classicRock",
                           secondTitle: "Классика рokа",
                           image: "classicRock")
    ]
}
