//
//  DragFirefliesView.swift
//  UsingVortex
//
//  Created by Shah Md Imran Hossain on 2/3/24.
//

import SwiftUI
import Vortex

struct DragFirefliesView: View {
    @State private var isDragging = false
    
    var body: some View {
        VortexViewReader { proxy in
            ZStack(alignment: .bottom) {
                if isDragging {
                    Text("Release your drag to reset the fireflies.")
                        .padding(.bottom, 20)
                } else {
                    Text("Drag anywhere to repel the fireflies.")
                        .padding(.bottom, 20)
                }

                VortexView(.fireflies.makeUniqueCopy()) {
                    Circle()
                        .fill(.white)
                        .frame(width: 32)
                        .blur(radius: 3)
                        .blendMode(.plusLighter)
                        .tag("circle")
                }
                .gesture(
                    DragGesture(minimumDistance: 0)
                        .onChanged { value in
                            proxy.attractTo(value.location)
                            proxy.particleSystem?.attractionStrength = -2
                            isDragging = true
                        }
                        .onEnded { _ in
                            proxy.particleSystem?.attractionStrength = 0
                            isDragging = false
                        }
                )
            }
        }
        .ignoresSafeArea(edges: .top)
    }
}

#Preview {
    DragFirefliesView()
        .preferredColorScheme(.dark)
}

