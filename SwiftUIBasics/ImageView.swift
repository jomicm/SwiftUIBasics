//
//  ImageView.swift
//  SwiftUIBasics
//
//  Created by Miguel Cruz on 16/07/21.
//

import SwiftUI

struct ImageView: View {
  var body: some View {
    VStack {
      Image("tesla")
        .resizable()
        .padding(10)
        .frame(width: 300, height: 230, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color.orange)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.purple, lineWidth: 14))
        .shadow(radius: 20)
      Image(systemName: "person.fill.badge.minus")
        .resizable()
        .padding(10)
        .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
    }
  }
}

struct ImageView_Previews: PreviewProvider {
  static var previews: some View {
    ImageView()
        .previewDevice("iPhone 11")
  }
}
