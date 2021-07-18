//
//  MainView.swift
//  SwiftUIBasics
//
//  Created by Miguel Cruz on 16/07/21.
//

import SwiftUI

struct MainView: View {
  var body: some View {
    ScrollView {
      VStack {
        MapView()
          .frame(height: 400)
        Divider()
          .padding()
        ImageView()
        ContentView()
      }
    }
  }
}

struct MainView_Previews: PreviewProvider {
  static var previews: some View {
    Group {
      MainView()
        .previewDevice("iPhone 11")
      MainView()
        .previewDevice("iPad Pro (9.7-inch)")
    }
  }
}
