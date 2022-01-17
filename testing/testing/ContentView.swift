//
//  ContentView.swift
//  testing
//
//  Created by Evan on 15/1/2022.
//

import SwiftUI

struct ContentView: View {
    @State var count: Int = 0
    
    var body: some View {
        let width = UIScreen.main.bounds.width
        VStack {
            MapView()
                .ignoresSafeArea()
                .frame(height: 300)
            VStack {
                CircleImage("apple", with: 100)
                    .offset(y: -100)
                    .padding(.bottom, -100)
//                    CircleImage("steve")
            }
            VStack(alignment: .leading) {
                Text("Title")
                    .font(.title)
                    .foregroundColor(Color.blue)
                HStack {
                    Text("Stay hungry. Stay foolish")
                        .font(.subheadline)
                        .frame(maxWidth: width / 4)
                    Spacer()
                    Text("Location").font(.subheadline).padding(.leading, 20)
                        .frame(maxWidth: width / 4)
                    Text("\(count)")
                        .frame(maxWidth: width / 3)
                }
                
                Divider()
                Text("Placeholder")
                    .font(.title2)
                Text("Longgggggggggggggggggggg")
                Text("\(count)")
                Button("Click") {
                    print("Clicked")
                    count += 1
                }
            }
            Spacer()
        }
            
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
            .preferredColorScheme(.light)
    }
}
