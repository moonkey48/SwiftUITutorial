//
//  ProfileHost.swift
//  1-tutorial
//
//  Created by Seungui Moon on 2023/03/22.
//

import SwiftUI

struct ProfileHost: View {
    @State var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: Profile.default)
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
