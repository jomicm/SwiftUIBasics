//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Miguel Cruz on 16/07/21.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(alignment: .leading, spacing: 20) {
      Text("Learning, Mexico!!")
        .font(.largeTitle)
        .foregroundColor(.green)
        .padding()
      Spacer()
      HStack {
        Text("Gola")
          .padding()
        Spacer()
        Text("Gola2")
          .padding()
      }
    }.background(Color.yellow)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
        .previewDevice("iPhone 11")
  }
}
