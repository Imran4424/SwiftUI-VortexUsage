//
//  TapAnywhereConfettiView.swift
//  UsingVortex
//
//  Created by Shah Md Imran Hossain on 2/3/24.
//

import SwiftUI
import Vortex

struct TapAnywhereConfettiView: View {
    var body: some View {
        VortexViewReader { proxy in
            ZStack {
                Text("Tap anywhere to create confetti.")

                VortexView(.confetti.makeUniqueCopy()) {
                    Rectangle()
                        .fill(.white)
                        .frame(width: 16, height: 16)
                        .tag("square")

                    Circle()
                        .fill(.white)
                        .frame(width: 16)
                        .tag("circle")
                }
                .onTapGesture { location in
                    proxy.move(to: location)
                    proxy.burst()
                }
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    TapAnywhereConfettiView()
}
