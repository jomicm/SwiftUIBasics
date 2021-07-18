//
//  EnvironmentView.swift
//  SwiftUIBasics
//
//  Created by Miguel Cruz on 18/07/21.
//

import SwiftUI

struct EnvironmentView: View {
  
  @EnvironmentObject var user: UserData

  var body: some View {
    Text("Hello \(user.name)")
  }
}

struct EnvironmentView_Previews: PreviewProvider {
  static var previews: some View {
    EnvironmentView().environmentObject(UserData())
  }
}
