//
//  ConfettiView.swift
//  UsingVortex
//
//  Created by Shah Md Imran Hossain on 2/3/24.
//

import SwiftUI
import Vortex

struct ConfettiView: View {
    var body: some View {
        VortexViewReader { proxy in
            VortexView(.confetti) {
                Rectangle()
                    .fill(.white)
                    .frame(width: 16, height: 16)
                    .tag("square")

                Circle()
                    .fill(.white)
                    .frame(width: 16)
                    .tag("circle")
            }

            Button("Burst", action: proxy.burst)
        }
    }
}

#Preview {
    ConfettiView()
        .preferredColorScheme(.dark)
}
