//
//  ListView.swift
//  SwiftUI+Navigation+MapKit
//
//  Created by Ravi Patel on 19/08/21.
//

import SwiftUI

struct ListView: View {
    @State private var showFavoritesOnly = false

    var filteredColleges: [DataModel] {
        jsonData.filter { jD in
            (!showFavoritesOnly || jD.isFavorite)
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly, label: {
                    Text("Fav Only")
                })
                
                ForEach(filteredColleges) { fC in
                    NavigationLink(destination: CollegeDetails(data: fC)) {
                        CommonRow(data: fC)
                    }
                }
            }
            .navigationTitle("College List")
            .navigationBarTitleDisplayMode(.automatic)
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
