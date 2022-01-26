//
//  CalculatorButton.swift
//  testing
//
//  Created by Evan on 27/1/2022.
//

import SwiftUI

struct CalculatorButton3: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        if #available(iOS 15.0, *) {
            configuration.label
                .padding()
                .background(Color.orange)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .buttonStyle(.bordered)
        } else {
            // Fallback on earlier versions
        }
    }
}
