//
//  SwiftUIView.swift
//  1-tutorial
//
//  Created by Seungui Moon on 2023/03/21.
//

import SwiftUI

class Counter: ObservableObject {
    @Published var score: Int = 0
}

struct Count: View {
//    @State var score: Int = 0
    @ObservedObject var counter = Counter()
    
    var body: some View {
        VStack {
            Text("\(counter.score)")
                .font(.title)
               
            Button {
                counter.score += 1
            } label: {
                Text("+")
                    .font(.title2)
            }
        }
    }
}

struct Count_Previews: PreviewProvider {
    static var previews: some View {
        Count()
    }
}
