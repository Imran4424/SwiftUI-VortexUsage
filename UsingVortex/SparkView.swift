//
//  SparkView.swift
//  UsingVortex
//
//  Created by Shah Md Imran Hossain on 2/3/24.
//

import SwiftUI
import Vortex

struct SparkView: View {
    var body: some View {
        VortexView(.spark.makeUniqueCopy()) {
            Circle()
                .fill(.white)
                .frame(width: 16)
                .tag("circle")
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    SparkView()
        .preferredColorScheme(.dark)
}
