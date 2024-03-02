//
//  NameFloatingView.swift
//  UsingVortex
//
//  Created by Shah Md Imran Hossain on 2/3/24.
//

import SwiftUI
import Vortex

struct NameFloatingView: View {
    @State private var isDragging = false
    
    var body: some View {
        VortexViewReader { proxy in
            ZStack(alignment: .bottom) {
                if isDragging {
                    Text("Release your drag to reset the characters.")
                        .padding(.bottom, 20)
                } else {
                    Text("Drag anywhere to repel the characters.")
                        .padding(.bottom, 20)
                }
                
                VortexView(createNameFloating().makeUniqueCopy()) {
                    Text("Imran")
                        .font(.system(size: 25))
                        .tag("imran")
                    
                    Text("Soudha")
                        .font(.system(size: 25))
                        .tag("soudha")
                    
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

// MARK: - methods
extension NameFloatingView {
    func createNameFloating() -> VortexSystem {
        let system = VortexSystem(tags: ["imran" , "soudha"])
        system.shape = .ellipse(radius: 0.5)
        system.birthRate = 200
        system.lifespan = 2
        system.speed = 0
        system.speedVariation = 0.25
        system.angleRange = .degrees(360)
        system.colors = .ramp(.yellow, .yellow, .yellow.opacity(0))
        system.size = 0.01
        system.sizeMultiplierAtDeath = 100
        
        return system
    }
}

#Preview {
    NameFloatingView()
        .preferredColorScheme(.dark)
}

