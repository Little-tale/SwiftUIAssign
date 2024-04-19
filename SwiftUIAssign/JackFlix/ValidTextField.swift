//
//  ValidTextField.swift
//  SwiftUIAssign
//
//  Created by Jae hyung Kim on 4/19/24.
//

import SwiftUI

/*
 https://velog.io/@dassy_zh/ViewLayoutProcedure // 스유의 레이아웃 구조
 */

struct ValidTextField: View {
    
    var placholderText: String
    
    @Binding
    var bindText: String
    
    var body: some View {
        HStack{
            TextField(placholderText, text: $bindText)
                .padding(.all, 10)
                .background(.gray)
                .clipShape(.buttonBorder)
        }
    }
}

