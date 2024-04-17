//
//  CertificateOfRegistryInformation.swift
//  SwiftUIAssign
//
//  Created by Jae hyung Kim on 4/17/24.
//

import SwiftUI


struct CertificateOfRegistryInformationView: View {
    
    
    var body: some View {
        
        ZStack {
            Color.black
            
            VStack {
                Image(systemName: "scribble.variable")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundStyle(.white)
                
                Text("등기부등본은 집주인만 발급받을 수 있다?")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.white)
                
                Text("매일 푸는 금융 퀴드 290,300명 참여중!")
                    .foregroundStyle(.white)
                
                HStack (spacing: 15) {
                    Spacer()
                    Button {
                        print("버튼액션!")
                    } label: {
                        VStack{
                            Image(systemName: "circle")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .padding()
                            Text("그렇다")
                        }
                        .padding(.bottom)
                    }
                    .frame(width: 150)
                    .background(.blue)
                    .clipShape(.buttonBorder)
                    .foregroundStyle(.white)
                    
                    
                    Button {
                        print("버튼액션2!")
                    } label: {
                        VStack{
                            Image(systemName: "x.circle")
                                .resizable()
                                .frame(width: 60, height: 60)
                                .padding()
                            Text("아니다")
                        }
                        .padding(.bottom)
                    }
                    .frame(width: 150)
                    .background(.red)
                    .clipShape(.buttonBorder)
                    .foregroundStyle(.white)
                    Spacer()
                }
                // 뒷배경이 검정이라 Z를 이용해 감싸자.
            } // 하지만 SafeLayer 를 인식함으로 이를 해제해주자.
        }.ignoresSafeArea()
    
    }
    
    
}

