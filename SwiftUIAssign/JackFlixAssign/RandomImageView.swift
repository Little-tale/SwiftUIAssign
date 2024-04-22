//
//  RandomImageView.swift
//  SwiftUIAssign
//
//  Created by Jae hyung Kim on 4/22/24.
//

import SwiftUI
struct RendomImageView: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    var body: some View {
        Image(systemName: "star")
            
        AsyncImage(url: url) {
            data in
            switch data {
            case .empty:
                ProgressView()
            case .failure(let error):
                Image(systemName: "star")
            case .success(let image):
                image.resizable()
                    .scaledToFill()
                    .clipShape(Circle())
            @unknown default:
                Image(systemName: "star")
            }
        }
        .frame(width: 150,height: 150)
        
    }
}
