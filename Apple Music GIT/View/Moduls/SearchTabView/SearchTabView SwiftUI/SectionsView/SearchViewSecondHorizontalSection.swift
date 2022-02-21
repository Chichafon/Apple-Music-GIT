//
//  SecondHorizontalSection.swift
//  Apple Music GIT
//
//  Created by 111 on 07.02.2022.
//

import SwiftUI

struct SearchViewSecondHorizontalSection: View {

    @State var dataModel = RadioModelVerticalSectionObserver()

    var rows = [GridItem(.flexible())]
    
    var body: some View {
        VStack {
            Spacer()
            HStack {
                Text("Настроение - Осень")
                    .font(.title2)
                    .bold()

                Spacer()

                Button(
                    action: {

                    },
                    label: {
                        Text("См. все")}).foregroundColor(.red).font(.title2)
            }
            .padding([.leading, .trailing], 20)

            ScrollView(.horizontal, showsIndicators: false) {
                LazyHGrid(rows: rows, spacing: Metric.lazyHGridSpacing) {
                    ForEach(dataModel.data, id: \.id) { data in
                        HStack {
                            Image(data.image)
                                .resizable()
                                .frame(width: Metric.imageFrameWidth,
                                       height: Metric.imageFrameHeight)
                                .scaledToFill()
                                .cornerRadius(Metric.imageCornerRadius)
                        }
                    }
                }
                .padding(.leading, 20)
                .padding(.trailing, 20)
            }
            Spacer()
                .padding(.bottom, 40)
        }
        .padding(.top, 1)
    }
}

extension SearchViewSecondHorizontalSection {

    enum Metric {
        static let imageFrameWidth: CGFloat = 190
        static let imageFrameHeight: CGFloat = 210
        static let imageCornerRadius: CGFloat = 5

        static let lazyHGridSpacing: CGFloat = 10

        static let textFontSizeFirstTitle: CGFloat = 14
        static let textFontSizeSecondTitle: CGFloat = 22
        static let textFontSizeThirdTitle: CGFloat = 22
    }
}

struct SearchViewSecondHorizontalSection_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewSecondHorizontalSection()
    }
}
