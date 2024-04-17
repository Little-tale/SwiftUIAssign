//
//  CertificateOfRegistryInformation.swift
//  SwiftUIAssign
//
//  Created by Jae hyung Kim on 4/17/24.
//

import SwiftUI


struct CertificateOfRegistryInformationView: View {
    
    
    var body: some View {
        VStack {
            // 등기부 등본 뷰를 분석해보자
            // 1. 이미지가 좌측 위 -> Vtack
            // 2. 글자가 아래로 구성 -> Vtack
            // 3. 또하나의 섭 타이틀 - > Vtack
            // 4. 두개의 버튼 이 나열 되있다.-> HStack
        //  내 예상은 다음과 같다 위에 적힌 대로 진행을 해보려고 한다.
            
            //이미지가 한개 이기에 이미지는 그대로 작성
//            HStack(alignment: .top,spacing: 10) {
//                Spacer()
//                Image(systemName: "scribble.variable") // 사이즈가 작아보이기에 키운다.
//                    .resizable() // 밑의 문제를 다음과 같은 메서드를 통해 해결...
//                    .frame(width: 50, height: 50) // 프레임을 통해 키우려 하였으나 놀랍게도 이미지는 그대로이고 영역만 커진다. CHECK
//                    .background(.blue)
//            }
//            Text("등기부등본은 집주인만 발급받을 수 있다?")
//                .font(.title)
//                .bold()
            
            Image(systemName: "scribble.variable")
                .resizable()
                .frame(width: 50, height: 50)
            
            Text("등기부등본은 집주인만 발급받을 수 있다?")
                .font(.title)
                .bold()
            
            Text("매일 푸는 금융 퀴드 290,300명 참여중!")
            
            HStack {
                
                Button {
                    print("버튼액션!")
                } label: {
                    Image(systemName: "circle")
                }
                
                Button {
                    print("버튼액션2!")
                } label: {
                    Image(systemName: "x.circle")
                }
            }
            
            // 뒷배경이 검정이라 Z를 이용해 감싸자.
        }
    }
    
    
}
