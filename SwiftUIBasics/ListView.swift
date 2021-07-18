//
//  ListView.swift
//  SwiftUIBasics
//
//  Created by Miguel Cruz on 16/07/21.
//

import SwiftUI

final class ProgrammersModelData: ObservableObject {
  @Published var programmers = [
    Programmer(id: 0, name: "Miguel", languages: "C++", avatar: Image(systemName: "person.fill"), favorite: false),
    Programmer(id: 1, name: "New Programmer", languages: "Java", avatar: Image(systemName: "arrow.up"), favorite: true),
    Programmer(id: 2, name: "New Programmer 2", languages: "JS", avatar: Image(systemName: "arrow.left"), favorite: false)
  ]
}

struct ListView: View {
  
  @EnvironmentObject var programmerModelData: ProgrammersModelData
  @State private var showFavorites = false
  
  private var filteredProgrammers: [Programmer] {
    return programmerModelData.programmers.filter { programmer in
      return !showFavorites || programmer.favorite
    }
  }
  
  var body: some View {
    NavigationView {
      VStack {
        
        Toggle(isOn: $showFavorites) {
          Text("Show favorites")
        }.padding()
        
        List(filteredProgrammers, id: \.id) { programmer in
          NavigationLink(destination: ListDetailView(favorite: $programmerModelData.programmers[programmer.id].favorite, programmer: programmer)) {
            RowView(programmer: programmer)
          }
        }
      }.navigationTitle("Programmers")
    }
    
  }
}

struct ListView_Previews: PreviewProvider {
  static var previews: some View {
    ListView().environmentObject(ProgrammersModelData())
  }
}
