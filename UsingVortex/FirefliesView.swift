//
//  FirefliesView.swift
//  UsingVortex
//
//  Created by Shah Md Imran Hossain on 2/3/24.
//

import SwiftUI
import Vortex

struct FirefliesView: View {
    var body: some View {
        VortexView(.fireflies.makeUniqueCopy()) {
            Circle()
                .fill(.white)
                .frame(width: 32)
                .blur(radius: 3)
                .blendMode(.plusLighter)
                .tag("circle")
        }
    }
}

#Preview {
    FirefliesView()
        .preferredColorScheme(.dark)
}
