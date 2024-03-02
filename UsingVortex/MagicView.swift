//
//  MagicView.swift
//  UsingVortex
//
//  Created by Shah Md Imran Hossain on 2/3/24.
//

import SwiftUI
import Vortex

struct MagicView: View {
    var body: some View {
        VortexView(.magic.makeUniqueCopy()) {
            Image(.sparkle)
                .blendMode(.plusLighter)
                .tag("sparkle")
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    MagicView()
}
