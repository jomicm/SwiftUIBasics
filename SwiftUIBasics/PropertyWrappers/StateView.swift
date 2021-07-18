//
//  StateView.swift
//  SwiftUIBasics
//
//  Created by Miguel Cruz on 18/07/21.
//

import SwiftUI

class UserData: ObservableObject {
  @Published var name = "Miguel"
  @Published var lastName = "Cruz"
}

struct StateView: View {
  
  @State private var value = 0
  @State private var selection: Int?
  @StateObject private var user = UserData()

    var body: some View {
      NavigationView {
        VStack {
          Text("Current Value is > \(value)")
          Button("Add 1") {
            value += 1
          }
          Text("My name is \(user.name) and my last name is \(user.lastName)")
          Button("Update user data") {
            user.name = "Other name"
            user.lastName = "Other last name"
          }
          NavigationLink(destination: BindingView(value: $value, user: user), tag: 1, selection: $selection) {
            Button("Go To Binding View") {
              selection = 1
            }
          }
        }.navigationTitle("State View")
      }
    }
}

struct StateView_Previews: PreviewProvider {
    static var previews: some View {
      StateView().environmentObject(UserData())
    }
}
