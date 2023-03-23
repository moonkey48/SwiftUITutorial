//
//  Profile.swift
//  1-tutorial
//
//  Created by Seungui Moon on 2023/03/22.
//

import Foundation


struct Profile {
    var userName: String
    var preferNotifications = true
    var seasonalPhoto = Season.winter
    var goalData = Date()
    
    static let `default` = Profile(userName: "g_kumar")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
}
