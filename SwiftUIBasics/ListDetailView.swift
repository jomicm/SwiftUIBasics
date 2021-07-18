//
//  ListDetailView.swift
//  SwiftUIBasics
//
//  Created by Miguel Cruz on 18/07/21.
//

import SwiftUI

struct ListDetailView: View {
  @Binding var favorite: Bool
  var programmer: Programmer
  
  var body: some View {
    VStack {
      programmer.avatar
        .resizable()
        .frame(width: 200, height: 200)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.black, lineWidth: 4))
        .shadow(color: Color.gray, radius: 5)
      HStack {
        Text(programmer.name).font(.largeTitle)
        Button {
          favorite.toggle()
        } label: {
          if favorite {
            Image(systemName: "star.fill")
              .foregroundColor(.yellow)
          } else {
            Image(systemName: "star")
              .foregroundColor(.gray)
          }
        }
      }
      Text(programmer.languages).font(.title)
      Spacer()
    }
  }
}

struct ListDetailView_Previews: PreviewProvider {
  static var previews: some View {
    ListDetailView(
      favorite: .constant(false),
      programmer: Programmer(id: 1, name: "Miguel", languages: "C++", avatar: Image(systemName: "person.fill"), favorite: true)
    )
  }
}
