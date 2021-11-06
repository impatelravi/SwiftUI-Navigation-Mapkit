//
//  CommonRow.swift
//  SwiftUI+Navigation+MapKit
//
//  Created by Ravi Patel on 17/08/21.
//

import SwiftUI

struct CommonRow: View {
    var data: DataModel
    
    var body: some View {
        HStack(spacing: 8.0) {
            data.image
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(Circle())
            
            Divider()
            
            Text(data.name)
            
            Spacer()
            
            if data.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}


struct CommonRow_Previews: PreviewProvider {
    static var previews: some View {
        CommonRow(data: jsonData[0])
        Group {
            CommonRow(data: jsonData[0])
            CommonRow(data: jsonData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
