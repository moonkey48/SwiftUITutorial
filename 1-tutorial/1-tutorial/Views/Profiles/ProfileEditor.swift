//
//  ProfileEditor.swift
//  1-tutorial
//
//  Created by Seungui Moon on 2023/03/23.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalData)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalData)!
        return min...max
    }
    
    var body: some View {
        List {
            HStack {
                Text("User Name").bold()
                Divider()
                TextField("Username", text: $profile.userName)
            }
            Toggle(isOn: $profile.preferNotifications) {
                Text("Enable Notifications").bold()
            }
            
            VStack(alignment: .leading) {
                Text("Seasonal Photo").bold()
                
                Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(.segmented)
            }
            
            DatePicker(selection: $profile.goalData, in: dateRange, displayedComponents: .date) {
                Text("Goal Date").bold()
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
