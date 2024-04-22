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
                RandomImageSection(sectionTitle: "첫번째 섹션", framsSize: .init(width: 170, height: 230))
                RandomImageSection(sectionTitle: "두번째 섹션", framsSize: .init(width: 170, height: 230))
                RandomImageSection(sectionTitle: "세번째 섹션", framsSize: .init(width: 170, height: 230))
            }.navigationTitle("My Random Image")
        }
    }
}


