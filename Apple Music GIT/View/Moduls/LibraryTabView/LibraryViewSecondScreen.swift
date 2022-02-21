//
//  LibraryViewSecondScreen.swift
//  Apple Music GIT
//
//  Created by 111 on 01.02.2022.
//

import SwiftUI

struct LibraryViewSecondScreen: View {

    @State private var isEditModeActive = EditMode.active
    @State private var multiSelection = Set<String>()

    var body: some View {
        VStack {
            List(selection: $multiSelection) {
                ForEach(LibraryModel.data, id: \.self) { item in
                    HStack {
                        Image(systemName: "\(item.image)")
                            .foregroundColor(.red)
                        Text(item.title)
                    }
                }
                .onMove { IndexSet, Index in
                    LibraryModel.data.move(fromOffsets: IndexSet,
                                           toOffset: Index)
                }
            }
            .listStyle(.plain)
            .environment(\.editMode, $isEditModeActive)
            .accentColor(.red)
        }
    }
}

struct LibraryViewSecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        LibraryViewSecondScreen()
    }
}
