//
//  verticalSection.swift
//  Apple Music GIT
//
//  Created by 111 on 03.02.2022.
//

import SwiftUI

struct RadioViewVerticalSection: View {

    @ObservedObject var dataModel = RadioModelVerticalSectionObserver()

    var columns = [GridItem(.flexible())]

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: columns, alignment: .leading, spacing: Metric.lazyVGridSpacing) {

                Text("Станции")
                    .font(.title)
                    .bold()

                ForEach(dataModel.data, id: \.id) { data in
                    VStack {
                        HStack {

                            Image(data.image)
                                .resizable()
                                .frame(width: Metric.imageFrameWidth,
                                       height: Metric.imageFrameHeight)
                                .scaledToFill()
                                .cornerRadius(Metric.imageCornerRadius)

                            VStack(alignment: .leading) {

                                Text(data.firstTitle)
                                    .font(.system(size: Metric.textFontSizeTitleLabel))

                                Text(data.secondTitle)
                                    .foregroundColor(.gray)
                                    .font(.system(size: Metric.textFontSizeSubTitleLabel))
                            }
                        }
                    }
                    Divider()
                }
            }
            .padding()
            .padding(.bottom, 80)
        }
    }
}

extension RadioViewVerticalSection {
    enum Metric {
        static let imageFrameWidth: CGFloat = 120
        static let imageFrameHeight: CGFloat = 120
        static let imageCornerRadius: CGFloat = 10

        static let textFontSizeTitleLabel: CGFloat = 22
        static let textFontSizeSubTitleLabel: CGFloat = 14

        static let lazyVGridSpacing: CGFloat = 15
        static let lazyVGridPaddingBottom: CGFloat = 50
    }
}

struct RadioViewVerticalSection_Previews: PreviewProvider {
    static var previews: some View {
        RadioViewVerticalSection()
    }
}
