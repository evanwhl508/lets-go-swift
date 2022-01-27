//
//  CalculatorButton.swift
//  testing
//
//  Created by Evan on 27/1/2022.
//

import SwiftUI

struct CalculatorButton2: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        if #available(iOS 15.0, *) {
            configuration.label
                .padding()
                .background(Color.secondary)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .buttonStyle(.bordered)
        } else {
            // Fallback on earlier versions
        }
    }
}
