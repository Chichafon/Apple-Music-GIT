//
//  RadioView.swift
//  Apple Music GIT
//
//  Created by 111 on 03.02.2022.
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    Divider()

                    RadioViewHorizontalSection()

                    Divider()

                    Spacer()

                    RadioViewVerticalSection()
                }
            }
            .navigationBarTitle("Радио")
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
