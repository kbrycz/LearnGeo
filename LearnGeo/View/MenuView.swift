//
//  MenuView.swift
//  LearnGeo
//
//  Created by Karl Brycz on 7/8/23.
//

import SwiftUI

struct MenuView: View {
    @Binding var selection: Int?

    var body: some View {
        BaseView {
            VStack(spacing: 20) {
                Text("Hello, world!")
                    .font(.largeTitle)

                Text("This is a subtitle")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                VStack(spacing: 20) {
                    Button("Button 1") {
                        selection = 1
                    }
                    .buttonStyle(.bordered)

                    Button("Button 2") {
                        selection = 2
                    }
                    .buttonStyle(.bordered)
                }
            }
        }
    }
}

#Preview {
    MenuView(selection: .constant(0))
}
