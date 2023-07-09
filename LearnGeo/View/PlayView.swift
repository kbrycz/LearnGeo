//
//  PlayView.swift
//  LearnGeo
//
//  Created by Karl Brycz on 7/8/23.
//

import SwiftUI

struct PlayView: View {
    @Binding var selection: Int?

    var body: some View {
        BaseView {
            VStack {
                Text("Play View")
                    .font(.largeTitle)
                
                Button("Back") {
                    selection = 0
                }
                .buttonStyle(.bordered)
            }
        }
    }
}
