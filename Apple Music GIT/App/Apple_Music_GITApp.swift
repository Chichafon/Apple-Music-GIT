//
//  Apple_Music_GITApp.swift
//  Apple Music GIT
//
//  Created by 111 on 01.02.2022.
//

import SwiftUI

@main
struct Apple_Music_GITApp: App {

    @StateObject var dataModel = RadioModelHorizontalSectionObserver()

    var body: some Scene {
        WindowGroup {
            TabBar()
                .environmentObject(dataModel)
        }
    }
}
