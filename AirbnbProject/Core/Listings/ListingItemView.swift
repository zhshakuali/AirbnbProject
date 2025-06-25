//
//  ListingItemView.swift
//  AirbnbProject
//
//  Created by Жансая Шакуали on 25.06.2025.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4"
    ]
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            TabView {
                ForEach(images, id: \.self) { image in
                    // Image(image)
                    Rectangle()
                }
            }
            .frame(height: 320)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .tabViewStyle(.page)
            
            // Details
            HStack(spacing: 0) {
                Text("Miami Florida")
                    .fontWeight(.semibold)
                Spacer()
                HStack(spacing: 0) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
            }
            
            VStack(alignment: .leading, spacing: 0){
                Text("12 mi away")
                    .foregroundStyle(.gray)
                Text("Nov 3-10")
                    .foregroundStyle(.gray)
                Text("$567 night")
                    .fontWeight(.semibold)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
