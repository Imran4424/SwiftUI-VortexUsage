//
//  SnowView.swift
//  UsingVortex
//
//  Created by Shah Md Imran Hossain on 2/3/24.
//

import SwiftUI
import Vortex

struct SnowView: View {
    var body: some View {
        VortexView(.snow) {
            Circle()
                .fill(.white)
                .blur(radius: 5)
                .frame(width: 32)
                .tag("circle")
        }
    }
}

#Preview {
    SnowView()
        .preferredColorScheme(.dark)
}
