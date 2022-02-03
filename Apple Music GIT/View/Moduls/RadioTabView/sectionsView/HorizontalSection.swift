//
//  horizontalSection.swift
//  Apple Music GIT
//
//  Created by 111 on 03.02.2022.
//

import SwiftUI

struct HorizontalSection: View {

    @ObservedObject var dataModel = RadioModelHorizontalObserver()

    var rows = [GridItem(.flexible())]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows, spacing: Metric.lazyHGridSpacing) {
                ForEach(dataModel.data, id: \.id) { data in
                    VStack(alignment: .center) {
                        Divider()

                        Text(data.firstTitle)
                            .foregroundColor(.gray)
                            .font(.system(size: Metric.textFontSizeTitleLabel))

                        Text(data.secondTitle)
                            .font(.system(size: Metric.textFontSizeSubTitleLabel))

                        Text(data.thirdTitle)
                            .font(.system(size: Metric.textFontSizeGroupTitleLabel))
                            .foregroundColor(.gray)

                        Image(data.image)
                            .resizable()
                            .frame(width: Metric.imageFrameWidth,
                                   height: Metric.imageFrameHeight)
                            .scaledToFill()
                            .cornerRadius(Metric.imageCornerRadius)

                        Divider()
                    }
                    .padding(.leading, 20)
                }
            }
        }
    }
}

extension HorizontalSection {

    enum Metric {
        static let imageFrameWidth: CGFloat = 360
        static let imageFrameHeight: CGFloat = 250
        static let imageCornerRadius: CGFloat = 5

        static let lazyHGridSpacing: CGFloat = 10

        static let textFontSizeTitleLabel: CGFloat = 14
        static let textFontSizeSubTitleLabel: CGFloat = 22
        static let textFontSizeGroupTitleLabel: CGFloat = 22

        static let lazyVGridSpacing: CGFloat = 10
    }
}

struct HorizontalSection_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalSection()
    }
}
