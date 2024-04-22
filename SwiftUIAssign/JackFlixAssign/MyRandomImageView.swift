//
//  MyRandomImageView.swift
//  SwiftUIAssign
//
//  Created by Jae hyung Kim on 4/22/24.
//

import SwiftUI

struct MyRandomImageView: View {
    
    var body: some View {
        NavigationView {
            ScrollView {
                // 1. 섹션
                VStack(alignment: .leading, content: {
                    Text("첫번째 섹션")
                        .font(.headline)
                        .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(0..<20) {
                                index in
                                RendomImageView(cgSize: .init(width: 150, height: 200))
                            }
                        }
                    }
                    
                })
                VStack(alignment: .leading, content: {
                    Text("두번째 섹션")
                        .font(.headline)
                        .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(0..<20) {
                                index in
                                RendomImageView(cgSize: .init(width: 150, height: 200))
                            }
                        }
                    }
                    
                })
                VStack(alignment: .leading, content: {
                    Text("세번째 섹션")
                        .font(.headline)
                        .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 20) {
                            ForEach(0..<20) {
                                index in
                                RendomImageView(cgSize: .init(width: 150, height: 200))
                            }
                        }
                    }
                    
                })
            }.navigationTitle("My Random Image")
        }
    }
}
