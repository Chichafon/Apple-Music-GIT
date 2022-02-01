//
//  PlayerView.swift
//  Apple Music GIT
//
//  Created by 111 on 01.02.2022.
//

import SwiftUI

struct PlayerView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .stroke()
                    .frame(height: 100)
                    .background(Color.gray)
                    .opacity(0.1)

                HStack {
                    VStack {
                        HStack {
                            Image("shadowMan")
                                .padding([.top, .bottom, .leading], 10)
                        }
                    }
                    .padding(.trailing, 10)

                    VStack(alignment: .center) {
                        Text("COMPLEXITES")
                            .font(.title3)
                    }
                    .padding(.trailing, 30)

                    VStack {
                        Image(systemName: "play.fill")
                            .font(.system(size: 30))
                    }
                    .padding(.trailing, 10)


                    VStack {
                        Image(systemName: "forward.fill")
                            .font(.system(size: 30))
                            .padding(.trailing, 40)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
    }
}

