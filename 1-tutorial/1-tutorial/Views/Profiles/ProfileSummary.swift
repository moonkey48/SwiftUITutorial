//
//  ProfileSummary.swift
//  1-tutorial
//
//  Created by Seungui Moon on 2023/03/22.
//

import SwiftUI

struct ProfileSummary: View {
    @EnvironmentObject var modelData: ModelData
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10){
                Text("\(profile.userName)")
                    .bold()
                    .font(.title)
                
                Text("Notification:\(profile.preferNotifications ? "On" : "Off")")
                Text("Season Photo: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Data: ") + Text(profile.goalData, style: .date)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Complete Badge")
                        .font(.headline)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "fist Badge")
                            HikeBadge(name: "fist Badge")
                                .hueRotation(Angle(degrees: 60))
                            HikeBadge(name: "fist Badge")
                                .hueRotation(Angle(degrees: 120))
                        }
                        .padding(.bottom)
                    }
                }
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text("Recent Hike")
                        .font(.headline)
                    
                    HikeView(hike: modelData.hikes[0])
                }
            }
            .padding()
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}
