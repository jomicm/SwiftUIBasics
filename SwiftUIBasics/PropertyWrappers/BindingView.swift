//
//  BindingView.swift
//  SwiftUIBasics
//
//  Created by Miguel Cruz on 18/07/21.
//

import SwiftUI

struct BindingView: View {
  @Binding var value: Int
  @ObservedObject var user: UserData
  @State private var selection: Int?
  
    var body: some View {
      VStack {
        Button("Add 2") {
          value += 2
        }
        Button("Update user data from other view") {
          user.name = "Name from other view"
          user.lastName = "Last Name from other view"
        }
        NavigationLink(destination: EnvironmentView(), tag: 1, selection: $selection) {
          Button("Go To Environment View") {
            selection = 1
          }
        }
      }
    }
}

struct BindingView_Previews: PreviewProvider {
  static var previews: some View {
    BindingView(value: .constant(5), user: UserData())
  }
}
