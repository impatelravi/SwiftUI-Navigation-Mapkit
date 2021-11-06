//
//  CircleImage.swift
//  SwiftUI+Navigation+MapKit
//
//  Created by Ravi Patel on 17/08/21.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 10)
            .frame(width: 130, height: 130)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("GNUI"))
    }
}
