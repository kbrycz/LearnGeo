//
//  ContentView.swift
//  LearnGeo
//
//  Created by Karl Brycz on 7/8/23.
//

import SwiftUI

struct MainView: View {
    @State private var selection: Int? = 0

    var body: some View {
        ZStack {
            if selection == 0 {
                MenuView(selection: $selection)
            } else if selection == 1 {
                PlayView(selection: $selection)
            } else if selection == 2 {
                SettingsView(selection: $selection)
            }
        }
        .glassBackgroundEffect()
    }
}

#Preview {
    MainView()
}
