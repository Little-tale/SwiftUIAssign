//
//  DetailView.swift
//  SwiftUIAssign
//
//  Created by Jae hyung Kim on 4/22/24.
//

import SwiftUI

struct DetailView: View {
    
    let image: Image
    
    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .navigationTitle("DetailView")
            .navigationBarTitleDisplayMode(.inline)
    }
}
