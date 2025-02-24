//
//  ContentView.swift
//  DiceConsumer
//
//  Created by Javier Calatrava on 24/2/25.
//

import SwiftUI
import DiceSPM

struct ContentView: View {
    @State private var dice: String?
    var body: some View {
        VStack {
            if let dice = dice {
                Text(dice)
                    .font(.largeTitle)
            }
            Button {
                dice = DiceSPM.roll()
            } label: {
                Text("Roll the dice!")
            }

        }
        .padding()
    }
}

#Preview {
    ContentView()
}
