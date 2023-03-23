//
//  Timer.swift
//  learnAndTest
//
//  Created by Seungui Moon on 2023/03/20.
//

import Foundation
import SwiftUI
import Combine

class MyTimer: ObservableObject {
    @Published var value: Int = 0
    
    init() {
        
    }
}

struct Timer: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct Timer_Previews: PreviewProvider {
    static var previews: some View {
        Timer()
    }
}
