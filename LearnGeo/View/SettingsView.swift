//
//  SettingsView.swift
//  LearnGeo
//
//  Created by Karl Brycz on 7/8/23.
//

import SwiftUI

struct SettingsView: View {
    @Binding var selection: Int?

    var body: some View {
        BaseView {
            VStack {
                Text("Settings View")
                    .font(.largeTitle)
                
                Button("Back") {
                    selection = 0
                }
                .buttonStyle(.bordered)
            }
        }
    }
}
