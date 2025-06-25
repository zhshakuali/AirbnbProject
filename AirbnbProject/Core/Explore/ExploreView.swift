//
//  ExploreView.swift
//  AirbnbProject
//
//  Created by Жансая Шакуали on 22.06.2025.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                SearchAndFilterBar()
                
                LazyVStack(spacing: 32) {
                    ForEach(0...10, id: \.self) { listing in
                        ListingItemView()
                            .frame(height: 400)
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    ExploreView()
}
