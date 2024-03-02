//
//  ContentView.swift
//  UsingVortex
//
//  Created by Shah Md Imran Hossain on 2/3/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Confetti", destination: ConfettiView.init)
                NavigationLink("Tap Anywhere Confetti", destination: TapAnywhereConfettiView.init)
                NavigationLink("Fire", destination: FireView.init)
                NavigationLink("Fireflies", destination: FirefliesView.init)
                NavigationLink("Drag Fireflies", destination: DragFirefliesView.init)
                NavigationLink("Fireworks", destination: FireworksView.init)
                NavigationLink("Magic", destination: MagicView.init)
                NavigationLink("Rain", destination: RainView.init)
                NavigationLink("Smoke", destination: SmokeView.init)
                NavigationLink("Snow", destination: SnowView.init)
                NavigationLink("Spark", destination: SparkView.init)
            }
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.dark)
}
