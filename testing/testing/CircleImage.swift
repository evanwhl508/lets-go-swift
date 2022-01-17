//
//  CircleImage.swift
//  testing
//
//  Created by Evan on 15/1/2022.
//

import SwiftUI

struct CircleImage: View {
    var assetName: String
    var radius: CGFloat
    
    init(_ assetName: String, with radius: Double = 50.0) {
        self.assetName = assetName
        self.radius = CGFloat(radius)
    }
    var body: some View {
        Image(self.assetName)
            .resizable()
            .frame(width: radius * 2, height: radius * 2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .clipShape(Circle())
            .overlay(
                Circle().strokeBorder(Color.yellow, lineWidth: 4)
            )
            .shadow(radius: 7)
            
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage("apple")
    }
}
