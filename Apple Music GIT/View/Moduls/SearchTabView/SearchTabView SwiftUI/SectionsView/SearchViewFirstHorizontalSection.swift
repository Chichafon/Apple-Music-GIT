//
//  FirstHorizontalSection.swift
//  Apple Music GIT
//
//  Created by 111 on 07.02.2022.
//

import SwiftUI

struct SearchViewFirstHorizontalSection: View {

    @State var dataModel = RadioModelHorizontalSectionObserver()

    var rows = [GridItem(.flexible())]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, spacing: Metric.lazyHGridSpacing) {
                ForEach(dataModel.data, id: \.id) { data in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(data.firstTitle)
                                .foregroundColor(.gray)
                                .font(.system(size: Metric.textFontSizeFirstTitle))

                            Text(data.secondTitle)
                                .font(.system(size: Metric.textFontSizeSecondTitle))

                            Text(data.thirdTitle)
                                .font(.system(size: Metric.textFontSizeThirdTitle))
                                .foregroundColor(.gray)

                            Image(data.image)
                                .resizable()
                                .frame(width: Metric.imageFrameWidth,
                                       height: Metric.imageFrameHeight)
                                .scaledToFill()
                                .cornerRadius(Metric.imageCornerRadius)
                        }
                    }
                }
            }
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .padding(.top, 130)
        }
    }
}

extension SearchViewFirstHorizontalSection {

    enum Metric {
        static let imageFrameWidth: CGFloat = 390
        static let imageFrameHeight: CGFloat = 315
        static let imageCornerRadius: CGFloat = 5

        static let lazyHGridSpacing: CGFloat = 10

        static let textFontSizeFirstTitle: CGFloat = 14
        static let textFontSizeSecondTitle: CGFloat = 22
        static let textFontSizeThirdTitle: CGFloat = 22
    }
}

struct SearchViewFirstHorizontalSection_Previews: PreviewProvider {
    static var previews: some View {
        SearchViewFirstHorizontalSection()
    }
}
