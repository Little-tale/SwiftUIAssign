//
//  RandomImageView.swift
//  SwiftUIAssign
//
//  Created by Jae hyung Kim on 4/22/24.
//

import SwiftUI
struct RendomImageView: View {
    
    let url = URL(string: "https://picsum.photos/200")
    
    let cgSize: CGSize
    
    @State
    private var imagee: Image?
    
    var body: some View {
        NavigationLink {
            if let imagee {
                DetailView(image: imagee)
            } else {
                DetailView(image: Image(systemName: "star"))
            }
            
        } label: {
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
                        .onAppear{
                            imagee = image
                        }
                        .frame(width: cgSize.width, height: cgSize.height)
                        .clipped()
                        .clipShape(.buttonBorder)
                        
                @unknown default:
                    Image(systemName: "star")
                }
            }
        }

        
    }
}
