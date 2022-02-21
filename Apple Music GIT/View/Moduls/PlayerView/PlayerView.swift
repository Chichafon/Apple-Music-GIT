//
//  PlayerView.swift
//  Apple Music GIT
//
//  Created by 111 on 01.02.2022.
//

import SwiftUI

struct PlayerView: View {

    @State var showPlayer = false
    @State var progressBar: CGFloat = 0
    @Namespace var namespace

    var body: some View {
        if !self.showPlayer {
            VStack {

                Spacer()

                VStack(spacing: 15) {
                    HStack(spacing: 15) {

                        // resizing image

                        Image("shadowMan")
                            .resizable()
                            .frame(width: self.showPlayer ? Metric.imageFrameWidthAndHeight : Metric.imageResizingWidth,
                                   height: self.showPlayer ? Metric.imageFrameWidthAndHeight : Metric.imageResizingHeight)
                            .padding(.top, self.showPlayer ? Metric.imagePadding : Metric.imageResizingPadding)

                        // hiding view if it expanded

                        if !self.showPlayer {

                            HStack {
                                VStack(alignment: .center) {
                                    Text("COMPLEXITES")
                                        .font(.title3)
                                }
                                .matchedGeometryEffect(id: "Details",
                                                       in: self.namespace)

                                Spacer()

                                Button {} label: {
                                    Image(systemName: "play.fill")
                                        .font(.title)
                                        .foregroundColor(.primary)
                                }
                                .matchedGeometryEffect(id: "play",
                                                       in: self.namespace)

                                Button {} label: {
                                    Image(systemName: "forward.fill")
                                        .font(.title)
                                        .foregroundColor(.primary)
                                }
                                .matchedGeometryEffect(id: "forward",
                                                       in: self.namespace)
                            }
                        }
                    }

                    // moving view up

                    if self.showPlayer {

                        VStack {
                            VStack(alignment: .center) {
                                Text("COMPLEXITES")
                                    .font(.title3)
                            }
                            .matchedGeometryEffect(id: "Details",
                                                   in: self.namespace)

                            Slider(value: self.$progressBar)

                            HStack {
                                Button {} label: {
                                    Image(systemName: "backward.fill")
                                        .font(.title)
                                        .foregroundColor(.primary)
                                }

                                Spacer()

                                Button {} label: {
                                    Image(systemName: "play.fill")
                                        .font(.title)
                                        .foregroundColor(.primary)
                                }
                                .matchedGeometryEffect(id: "play",
                                                       in: self.namespace)

                                Spacer()

                                Button {} label: {
                                    Image(systemName: "forward.fill")
                                        .font(.title)
                                        .foregroundColor(.primary)
                                }
                                .matchedGeometryEffect(id: "forward",
                                                       in: self.namespace)
                            }
                            .padding(.horizontal)

                            Spacer()
                        }
                    }
                }
                .padding(.all)
                .background(Color.white.shadow(radius: Metric.shadowRadius)
                                .onTapGesture {

                    // view expand

                    withAnimation(Animation.easeOut(duration: Metric.animationDuration)) {
                        self.showPlayer.toggle()
                    }
                }
                )
            }
            .frame(height: Metric.frameVStackHeight)
            .padding(.top, Metric.frameVStackPaddingTop)
        } else {
            VStack {

                Spacer()

                VStack(spacing: 15) {
                    HStack(spacing: 15) {

                        // resizing image

                        Image("shadowMan")
                            .resizable()
                            .frame(width: self.showPlayer ? Metric.imageFrameWidthAndHeight : Metric.imageResizingWidth,
                                   height: self.showPlayer ? Metric.imageFrameWidthAndHeight : Metric.imageResizingHeight)
                            .padding(.top, self.showPlayer ? Metric.imagePadding : Metric.imageResizingPadding)

                        // hiding view if it expanded

                        if !self.showPlayer {

                            HStack {
                                VStack(alignment: .center) {
                                    Text("COMPLEXITES")
                                        .font(.title3)
                                }
                                .matchedGeometryEffect(id: "Details",
                                                       in: self.namespace)

                                Spacer()

                                Button {} label: {
                                    Image(systemName: "play.fill")
                                        .font(.title)
                                        .foregroundColor(.primary)
                                }
                                .matchedGeometryEffect(id: "play",
                                                       in: self.namespace)

                                Button {} label: {
                                    Image(systemName: "forward.fill")
                                        .font(.title)
                                        .foregroundColor(.primary)
                                }
                                .matchedGeometryEffect(id: "forward",
                                                       in: self.namespace)
                            }
                        }
                    }

                    // moving view up

                    if self.showPlayer {

                        VStack {
                            VStack(alignment: .center) {
                                Text("COMPLEXITES")
                                    .font(.title3)
                            }
                            .matchedGeometryEffect(id: "Details",
                                                   in: self.namespace)

                            Slider(value: self.$progressBar)

                            HStack {
                                Button {} label: {
                                    Image(systemName: "backward.fill")
                                        .font(.title)
                                        .foregroundColor(.primary)
                                }

                                Spacer()

                                Button {} label: {
                                    Image(systemName: "play.fill")
                                        .font(.title)
                                        .foregroundColor(.primary)
                                }
                                .matchedGeometryEffect(id: "play",
                                                       in: self.namespace)

                                Spacer()

                                Button {} label: {
                                    Image(systemName: "forward.fill")
                                        .font(.title)
                                        .foregroundColor(.primary)
                                }
                                .matchedGeometryEffect(id: "forward",
                                                       in: self.namespace)
                            }
                            .padding(.horizontal)

                            Spacer()
                        }
                    }
                }
                .padding(.all)
                .background(Color.white.shadow(radius: Metric.shadowRadius)
                                .onTapGesture {

                    // view expand

                    withAnimation(Animation.easeOut(duration: Metric.animationDuration)) {
                        self.showPlayer.toggle()
                    }
                }
                )
            }
            .background(Color.black.opacity(Metric.backgroundColorOpacity))
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}

extension PlayerView {
    enum Metric {
        static let shadowRadius: CGFloat = 3
        static let animationDuration: CGFloat = 0.4
        static let backgroundColorOpacity: CGFloat = 0.06
        static let frameVStackHeight: CGFloat = 110
        static let frameVStackPaddingTop: CGFloat = 640

        static let imageFrameWidthAndHeight: CGFloat = 300
        static let imageResizingWidth: CGFloat = 70
        static let imageResizingHeight: CGFloat = 60
        static let imagePadding: CGFloat = 35
        static let imageResizingPadding: CGFloat = 0
    }
}


