//
//  MenuView.swift
//  LearnGeo
//
//  Created by Karl Brycz on 7/8/23.
//

// MenuView.swift
import SwiftUI

struct MenuView: View {
    @Binding var selection: Int?

    var body: some View {
        BaseView {
            GeometryReader { geometry in
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        VStack(spacing: 20) {
                            Text("Learn Geography!")
                                .font(.custom("Avenir Next", size: geometry.size.width * 0.06)) // Use the "Avenir Next" font
                                .bold()
                            
                            Text("Augmented Reality learning on Apple Vision Pro.")
                                .font(.custom("Avenir Next", size: geometry.size.width * 0.025)) // Use the "Avenir Next" font
                                .foregroundColor(.secondary)
                            
                            Image("globe")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: geometry.size.width * 0.8) // Adjust the image width based on the screen width
                            
                            VStack(spacing: 20) {
                                CustomButton(title: "Ready", action: { selection = 1 }, isProminent: true, width: geometry.size.width)
                                CustomButton(title: "Settings", action: { selection = 2 }, isProminent: false, width: geometry.size.width)
                            }
                            Spacer()
                            Text("v1.0.0 Clash Platforms")
                                .font(.custom("Avenir Next", size: geometry.size.width * 0.016)) // Use the "Avenir Next" font
                                .foregroundColor(.secondary)
                        }
                        Spacer()
                    }
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    MenuView(selection: .constant(0))
        .glassBackgroundEffect()
}
