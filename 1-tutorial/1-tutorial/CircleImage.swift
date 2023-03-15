//
//  CircleImage.swift
//  1-tutorial
//
//  Created by Seungui Moon on 2023/03/15.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("austin_profile")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.gray, lineWidth: 1)
            }
            .shadow(radius: 3)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
