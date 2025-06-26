//
//  ListingItemView.swift
//  AirbnbProject
//
//  Created by Жансая Шакуали on 25.06.2025.
//

import SwiftUI

struct ListingItemView: View {

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            // Details
            HStack(spacing: 0) {
                Text("Miami Florida")
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
                Spacer()
                HStack(spacing: 0) {
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
                .foregroundStyle(.black)
            }
            
            VStack(alignment: .leading, spacing: 0){
                Text("12 mi away")
                    .foregroundStyle(.gray)
                Text("Nov 3-10")
                    .foregroundStyle(.gray)
                Text("$567 night")
                    .fontWeight(.semibold)
                    .foregroundStyle(.black)
            }
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
