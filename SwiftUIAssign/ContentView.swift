//
//  ContentView.swift
//  SwiftUIAssign
//
//  Created by Jae hyung Kim on 4/16/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.red
            ZStack {
                VStack {
                    HStack {
                        //Spacer().frame(width: 50)
                        Image(systemName: "figure.fencing")
                            .imageScale(.large)
                            .foregroundStyle(.tint)
                            .frame(width: 300, height: 20, alignment: .leading)
                    }
                    HStack {
                        Text("포인트를 더 모을 수 있게 맞춤 혜택을 추천해 드릴까요?")
                            .foregroundStyle(.black)
                            .font(.title)
                            .multilineTextAlignment(.leading)
                        
                    }
                    Spacer()
                    VStack {
                        
                        Text("Hello, world!")
                    }
                    
                }
                .background(Color.gray)
            }.safeAreaPadding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 100))
        }
        .ignoresSafeArea()
    }
}
struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

#Preview {
    ContentView()
}
