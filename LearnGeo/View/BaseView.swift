//
//  BaseView.swift
//  LearnGeo
//
//  Created by Karl Brycz on 7/8/23.
//

import SwiftUI

struct BaseView<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        GeometryReader { geometry in
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    VStack(spacing: 20) {
                        content
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}
