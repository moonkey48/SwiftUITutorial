//
//  Landscape.swift
//  1-tutorial
//
//  Created by Seungui Moon on 2023/03/15.
//

import SwiftUI

struct Landscape: View {
    var body: some View {
        VStack {
//            MapView()
//                .frame(height: 400)
//                .ignoresSafeArea()
            
            
            Image("austin_profile")
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Jeju Island")
                    .bold()
                    .font(.largeTitle)
                
                HStack {
                    Text("Jeju is good")
                    Spacer()
                    Text("Korea")
                }
                Divider()
                Text("about Jeju island")
                    .font(.title2)
                    .bold()
                Text("jeju is amazing island blah blah")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct Landscape_Previews: PreviewProvider {
    static var previews: some View {
        Landscape()
    }
}
