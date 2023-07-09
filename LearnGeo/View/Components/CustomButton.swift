//
//  CustomButton.swift
//  LearnGeo
//
//  Created by Karl Brycz on 7/8/23.
//

// CustomButton.swift
import SwiftUI

struct CustomButton: View {
    var title: String
    var action: () -> Void
    var isProminent: Bool
    var width: CGFloat

    var body: some View {
        Button(action: action) {
            HStack {
                Spacer()
                Text(title)
                    .font(.custom("Avenir Next", size: width * 0.03)) // Use the "Avenir Next" font
                Spacer()
            }
        }
        .buttonStyle(.borderedProminent) // Use the default button style
        .frame(width: width * 0.6) // Set the width of the button to 60% of the screen width
        .foregroundColor(.white) // Use white text
        .cornerRadius(10) // Round the corners of the button
    }
}
