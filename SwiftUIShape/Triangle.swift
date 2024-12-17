//
//  Triangle.swift
//  SwiftUIShape
//
//  Created by Angelos Staboulis on 16/12/24.
//

import Foundation
import SwiftUI
struct Triangle: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        path.move(to: CGPoint(x: rect.minX, y: rect.maxY-150))

        path.addLine(to: CGPoint(x: rect.midX, y: rect.minY-150))

        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY-150))

        path.closeSubpath()

        return path
    }
}
