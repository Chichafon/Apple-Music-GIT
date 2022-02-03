//
//  PlayerView.swift
//  Apple Music GIT
//
//  Created by 111 on 01.02.2022.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
            ZStack {
                Rectangle()
                    .foregroundColor(.init(UIColor.systemGray6))
                    .frame(height: Metric.rectangleHeight).border(Color.white)

                HStack {
                    VStack {
                        HStack {
                            Image("shadowMan")
                                .resizable()
                                .frame(width: 90, height: 70, alignment: .bottomLeading)
                                .padding([.top, .bottom, .leading], Metric.firstPaddingOffset)
                        }
                    }
                    .padding(.trailing, Metric.firstPaddingOffset)

                    VStack(alignment: .center) {
                        Text("COMPLEXITES")
                            .font(.title3)
                    }
                    .padding(.trailing, Metric.secondPaddingOffset)

                    VStack {
                        Button {} label: {
                            Image(systemName: "play.fill")
                                .font(.title)
                                .foregroundColor(.primary)
                        }
                    }
                    .padding(.trailing, Metric.firstPaddingOffset)

                    VStack {
                        Button {} label: {
                            Image(systemName: "forward.fill")
                                .font(.title)
                                .foregroundColor(.primary)
                                .padding(.trailing, Metric.thirdPaddingOffset)
                        }
                    }
                }
        }
        .frame(width: Metric.playerViewWidth, height: Metric.playerViewHeight, alignment: .init(horizontal: .center, vertical: .center))
        .padding(.top, Metric.paddingOffset)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

extension PlayerView {
    enum Metric {
        static let rectangleHeight: CGFloat = 85
        static let rectangleOpacity: CGFloat = 0.1
        static let firstPaddingOffset: CGFloat = 10
        static let secondPaddingOffset: CGFloat = 30
        static let thirdPaddingOffset: CGFloat = 30
        static let imageFontSize: CGFloat = 30
        static let playerViewWidth: CGFloat = 420
        static let playerViewHeight: CGFloat = 200
        static let paddingOffset: CGFloat = 663
    }
}


