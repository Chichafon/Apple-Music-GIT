//
//  SearchViewSecondScreen.swift
//  Apple Music GIT
//
//  Created by 111 on 07.02.2022.
//

import SwiftUI

struct SearchViewSecondScreen: View {

    @EnvironmentObject var dataModel: RadioModelHorizontalSectionObserver

    var body: some View {
        VStack(alignment: .leading) {

            SearchViewFirstHorizontalSection()
                .frame(height: 510)

            SearchViewSecondHorizontalSection()
                .frame(height: 500)
            
            Spacer()
        }
    }
}

struct SearchViewSecondScreen_Previews: PreviewProvider {

    static var dataModel = RadioModelHorizontalSection.data

    static var previews: some View {
        SearchViewSecondScreen()
            .environmentObject(RadioModelHorizontalSectionObserver())
    }
}
