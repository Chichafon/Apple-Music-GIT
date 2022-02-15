//
//  SearchView.swift
//  Apple Music GIT
//
//  Created by 111 on 07.02.2022.
//

import SwiftUI

struct SearchView: View {

    @EnvironmentObject var dataModel: RadioModelHorizontalSectionObserver

    @State var searchText = " "
    @State var musics = RadioModelHorizontalSection.data

    var columns = Array(
        repeating: GridItem(.flexible()),
        count: 2)

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 1) {
                    Text("Поиск по категориям")
                        .font(.title2)
                        .bold()
                        .lineLimit(1)
                        .padding(.bottom, 5)


                    LazyVGrid(columns: columns, alignment: .leading, spacing: 10) {
                        ForEach(dataModel.data, id: \.self) { data in
                            NavigationLink {
                                SearchViewSecondScreen()
                                    .navigationBarTitle(data.secondTitle)
                                    .navigationBarItems(trailing:
                                                            Button(action: { },
                                                                   label: { Image(systemName: "ellipsis.circle.fill").foregroundColor(.black).font(.title2)}
                                                                  ))
                                    .padding(.top, 75)
                            } label: {
                                ZStack {
                                    Image(data.image)
                                        .resizable()
                                        .frame(width: 190, height: 190)
                                        .scaledToFit()
                                        .cornerRadius(15)

                                    Text(data.secondTitle)
                                        .foregroundColor(.white)
                                        .bold()
                                        .font(.title2)
                                        .padding(.top,  110)
                                }
                            }

                        }
                    }
                }
                .navigationBarTitle(Text("Поиск"))
                .padding(.bottom, 110)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            }
        }
        .searchable(text: $searchText,
                    placement: .navigationBarDrawer(displayMode: .always),
                    prompt: "Ваша медиатека") {
            ForEach(musics.filter { music in
                searchText == "" ? true :
                music.secondTitle.lowercased().contains(searchText.lowercased())
            }) { music in
                    HStack(spacing: 15) {
                        Image(music.image)
                            .resizable()
                            .frame(width: 50, height: 50)

                        VStack(alignment: .leading) {
                            Text(music.secondTitle)
                                .font(.title2)
                                .foregroundColor(.black)
                            Text(music.thirdTitle)
                                .font(.title3)
                                .foregroundColor(.gray)
                        }
                    }

                .searchCompletion(music.secondTitle)
            }
        }
        .listStyle(.grouped)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .environmentObject(RadioModelHorizontalSectionObserver())
            .previewDevice(PreviewDevice(rawValue: "iPhone 13 Pro Max"))
    }
}
