//
//  DigitFloatingView.swift
//  UsingVortex
//
//  Created by Shah Md Imran Hossain on 2/3/24.
//

import SwiftUI
import Vortex

struct DigitFloatingView: View {
    @State private var isDragging = false
    
    private let digitSize: CGFloat = 33
    
    var body: some View {
        VortexViewReader { proxy in
            ZStack(alignment: .bottom) {
                if isDragging {
                    Text("Release your drag to reset the names.")
                        .padding(.bottom, 20)
                } else {
                    Text("Drag anywhere to repel the names.")
                        .padding(.bottom, 20)
                }
                
                VortexView(createDigitFloating().makeUniqueCopy()) {
                    Text("0")
                        .font(.system(size: digitSize))
                        .tag("0")
                    
                    Text("1")
                        .font(.system(size: digitSize))
                        .tag("1")
                    
                    Text("2")
                        .font(.system(size: digitSize))
                        .tag("2")
                    
                    Text("3")
                        .font(.system(size: digitSize))
                        .tag("3")
                    
                    Text("4")
                        .font(.system(size: digitSize))
                        .tag("4")
                    
                    Text("5")
                        .font(.system(size: digitSize))
                        .tag("5")
                    
                    Text("6")
                        .font(.system(size: digitSize))
                        .tag("6")
                    
                    Text("7")
                        .font(.system(size: digitSize))
                        .tag("7")
                    
                    Text("8")
                        .font(.system(size: digitSize))
                        .tag("8")
                    
                    Text("9")
                        .font(.system(size: digitSize))
                        .tag("9")
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

extension DigitFloatingView {
    func createDigitFloating() -> VortexSystem {
        let system = VortexSystem(
            tags: ["0",
                   "1",
                   "2",
                   "3",
                   "4",
                   "5",
                   "6",
                   "7",
                   "8",
                   "9"]
        )
        system.shape = .ellipse(radius: 0.5)
        system.birthRate = 202
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
    DigitFloatingView()
}
