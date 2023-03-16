//
//  __tutorialApp.swift
//  1-tutorial
//
//  Created by Seungui Moon on 2023/03/14.
//

import SwiftUI

@main
struct __tutorialApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
