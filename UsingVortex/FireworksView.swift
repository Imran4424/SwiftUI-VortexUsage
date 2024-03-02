//
//  FireworksView.swift
//  UsingVortex
//
//  Created by Shah Md Imran Hossain on 2/3/24.
//

import SwiftUI
import Vortex

struct FireworksView: View {
    var body: some View {
        VortexView(.fireworks) {
            Circle()
                .fill(.white)
                .blendMode(.plusLighter)
                .frame(width: 32)
                .tag("circle")
        }
    }
}

#Preview {
    FireworksView()
        .preferredColorScheme(.dark)
}
