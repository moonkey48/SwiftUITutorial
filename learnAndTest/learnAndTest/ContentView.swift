//
//  ContentView.swift
//  learnAndTest
//
//  Created by Seungui Moon on 2023/03/20.
//

import SwiftUI

class UserSettings: ObservableObject {
    @Published var score = 0
    @Published var firstName = ""
    @Published var lastName = ""
}
class StructScore {
    var score = 0
}

struct ContentView: View {
    @ObservedObject var user = UserSettings()
    
    @State var structScore = 0
    
    var body: some View {
        VStack {
            Text("my score is \(structScore)")
            Button(action: {
                structScore += 1
            }) {
                Text("increase")
            }
            VStack {
                Text("당신의 이름은 \(user.firstName)\(user.lastName) 입니다")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(30)
                
                List {
                    Section(header: Text("이름을 입력하세요").font(.headline)) {
                        TextField("성", text: $user.firstName)
                        TextField("이름", text: $user.lastName)
                    }
                }
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
