//
//  BadgeBackground.swift
//  1-tutorial
//
//  Created by Seungui Moon on 2023/03/17.
//

import SwiftUI

struct BadgeBackground: View {
    var body: some View {
        GeometryReader { geometry in
            Path { path in
                let width: CGFloat = min(geometry.size.width, geometry.size.height)
                let height: CGFloat = width
                
                path.move(
                    to: CGPoint(
                        x: width * 0.95,
                        y: height * ( 0.20 + HexagonParameters.adjustment)
                    )
                )
                HexagonParameters.segments.forEach { segment in
                    path.addLine(to: CGPoint(x: width * segment.line.x, y: height * segment.line.y))
                    
                    path.addQuadCurve(
                        to: CGPoint(
                            x: width * segment.curve.x,
                            y: height * segment.curve.y
                        ),
                        control: CGPoint(
                            x: width * segment.control.x,
                            y: height * segment.control.y
                        )
                    )
                }
                
            }
            .fill(.black)
            
        }
    }
}

struct BadgeBackground_Previews: PreviewProvider {
    static var previews: some View {
        BadgeBackground()
    }
}
