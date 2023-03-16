//
//  ProfileTest.swift
//  1-tutorial
//
//  Created by Seungui Moon on 2023/03/16.
//

import SwiftUI

struct ProfileTest: View {
    var body: some View {
        VStack {
            
            Image("austin_profile")
                .clipShape(Circle())
            
            Text("Austin")
                .bold()
                .font(.largeTitle)
                .foregroundColor(.green)
                .padding(.all)
            Spacer()
            HStack(alignment: .firstTextBaseline) {
                Text("Jeju")
                    .foregroundColor(.green)
                    .font(.title2)
                Text("ISFJ")
                    .foregroundColor(.green)
                    .font(.title2)
                Text("Tech")
                    .foregroundColor(.green)
                    .font(.title2)
            }
            
            
            VStack(alignment: .leading) {
                
                Text("Love")
                    .font(.title3)
                    .bold()
                Text("집꾸미기, 침착맨, 🌿green")
                
                Spacer()
                Text("Hate")
                    .font(.title3)
                    .bold()
                Text("사람이 너무 많은 환경, 시끄러운 곳, 급작스러운 변화가 많은 곳")
                
                Spacer()
                Text("Good")
                    .font(.title3)
                    .bold()
                Text("계획 세우기, 계획 실행하기, 정리하기")
                
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.green)
            
            Spacer()
        }
    }
}

struct ProfileTest_Previews: PreviewProvider {
    static var previews: some View {
        ProfileTest()
    }
}
