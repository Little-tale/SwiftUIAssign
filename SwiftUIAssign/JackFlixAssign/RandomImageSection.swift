//
//  RandomImageSection.swift
//  SwiftUIAssign
//
//  Created by Jae hyung Kim on 4/22/24.
//

import SwiftUI

struct RandomImageSection: View {
    
    let sectionTitle: String
    let framsSize: CGSize
    
    var body: some View {
        VStack(alignment: .leading, content: {
            Text(sectionTitle)
                .font(.title)
                .bold()
                .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(0..<20) {
                        index in
                        RendomImageView(cgSize: framsSize)
                    }
                }
            }
            
        })
    }
}
