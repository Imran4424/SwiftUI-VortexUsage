//
//  RainView.swift
//  UsingVortex
//
//  Created by Shah Md Imran Hossain on 2/3/24.
//

import SwiftUI
import Vortex

struct RainView: View {
    var body: some View {
        ZStack {
            VortexView(.rain) {
                Circle()
                    .fill(.white)
                    .frame(width: 32)
                    .tag("circle")
            }
            
            VortexView(.splash) {
                Circle()
                    .fill(.white)
                    .frame(width: 16, height: 16)
                    .tag("circle")
            }
        }
        
    }
}

#Preview {
    RainView()
        .preferredColorScheme(.dark)
}
