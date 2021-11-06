//
//  CollegeDetails.swift
//  SwiftUI+Navigation+MapKit
//
//  Created by Ravi Patel on 23/08/21.
//

import SwiftUI

struct CollegeDetails: View {
    var data: DataModel
    
    var body: some View {
        ScrollView {
            VStack {
                MapView(coordinate: data.locationCoordinate)
                    .frame(height:300)
                    .ignoresSafeArea(edges: .top)
                
                CircleImage(image: data.image)
                    .offset(x: 105, y: -90)
                    .padding(.bottom, -120)
                
                VStack(alignment: .leading) {
                    Text(data.name)
                        .font(.title)
                    
                    HStack {
                        Text(data.city)
                        Spacer()
                        Text(data.state)
                    }.font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("About College/University:-")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.bottom, 5.0)
                    
                    Text(data.description)
                        .font(.title3)
                    
                    
                }.padding()
            }.navigationTitle(data.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct CollegeDetails_Previews: PreviewProvider {
    static var previews: some View {
        CollegeDetails(data: jsonData[0])
    }
}
