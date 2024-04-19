//
//  JackFlixView.swift
//  SwiftUIAssign
//
//  Created by Jae hyung Kim on 4/19/24.
//

import SwiftUI

struct JackFlixView: View {
    
    @State
    var email: String = ""
    
    @State
    var password: String = ""
    
    @State
    var nickName: String = ""
    
    @State
    var loaction: String = ""
    
    @State
    var recommendCode: String = ""
    
    var body: some View {
        // 검은 배경화면
        ZStack {
            Color.black
            VStack {
                // 상단 로고
                Text("JACKFLIX")
                    .font(.title)
                    .bold()
                    .foregroundStyle(.red)
                    .padding(.vertical, 60)
                
                // 이메일 주소 + 전화번호
                ValidTextField(placholderText: "이메일 주소 또는 전화번호", bindText: $email)
                    .padding(.bottom, 12)
                // 비밀번호
                ValidTextField(placholderText: "비밀번호", bindText: $password)
                    .padding(.bottom, 12)
                // 닉네임
                ValidTextField(placholderText: "닉네임", bindText: $nickName)
                    .padding(.bottom, 12)
                // 위치
                ValidTextField(placholderText: "위치", bindText: $loaction)
                    .padding(.bottom, 12)
                // 추천코드 입력
                ValidTextField(placholderText: "추천코드 입력", bindText: $recommendCode)
                    .padding(.bottom, 12)
                //회훤가입
                //추가 정보 입력 + 스위치
            }.padding(.horizontal, 20)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    JackFlixView()
}
