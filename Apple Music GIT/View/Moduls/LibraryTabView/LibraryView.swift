//
//  LibraryView.swift
//  Apple Music GIT
//
//  Created by 111 on 01.02.2022.
//

import SwiftUI

struct LibraryView: View {

    @State private var buttonTapped = true

    var body: some View {
        ZStack {
            NavigationView {
                VStack {
                    if buttonTapped {
                        VStack {
                            Spacer()

                            Text("Ищите свою музыку?")
                                .font(.system(size: Metric.labelTextFontSize,
                                              weight: .bold))

                            Text("Здесь появится купленная вами в iTunes Store музыка.")
                                .frame(width: Metric.secondaryLabelWidthSize)
                                .foregroundColor(.gray)
                                .multilineTextAlignment(.center)

                            Spacer()
                        }
                    } else {
                        VStack {
                            LibraryViewSecondScreen()
                        }
                    }
                }
                .navigationBarTitle(Text("Медиатека"))
                .navigationBarItems(trailing: Button(action: {
                    buttonTapped.toggle()
                }, label: {
                    if buttonTapped {
                        Text("Править").foregroundColor(.red)
                    } else {
                        Text("Готово").foregroundColor(.red)
                    }
                }))
            }
        }
    }
}

enum Metric {
    static let labelTextFontSize: CGFloat = 24
    static let secondaryLabelWidthSize: CGFloat = 300
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}
