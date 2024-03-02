//
//  SmokeView.swift
//  UsingVortex
//
//  Created by Shah Md Imran Hossain on 2/3/24.
//

import SwiftUI
import Vortex

struct SmokeView: View {
    var body: some View {
        VortexView(.smoke.makeUniqueCopy()) {
            Circle()
                .fill(.white)
                .frame(width: 64)
                .blur(radius: 10)
                .tag("circle")
        }
    }
}

#Preview {
    SmokeView()
        .preferredColorScheme(.dark)
}
