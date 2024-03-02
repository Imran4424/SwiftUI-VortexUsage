//
//  FireView.swift
//  UsingVortex
//
//  Created by Shah Md Imran Hossain on 2/3/24.
//

import SwiftUI
import Vortex

struct FireView: View {
    var body: some View {
        VortexView(.fire) {
            Circle()
                .fill(.white)
                .blendMode(.plusLighter)
                .blur(radius: 3)
                .frame(width: 32)
                .tag("circle")
        }
    }
}

#Preview {
    FireView()
        .preferredColorScheme(.dark)
}
