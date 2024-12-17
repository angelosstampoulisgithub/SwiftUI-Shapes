//
//  Line.swift
//  SwiftUIShape
//
//  Created by Angelos Staboulis on 16/12/24.
//

import Foundation
import SwiftUI
struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: -35, y: -280))

        path.addLine(to: CGPoint(x: 55, y: -280))

        path.closeSubpath()

        return path
    }
}
