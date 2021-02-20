import Foundation
import UIKit
import Geom

public extension Circle {
    func stroke(_ ctx: CGContext) {
        ctx.strokeEllipse(in: bounds.cgRect)
    }
}

public extension Rect {
    func stroke(_ ctx: CGContext) {
        ctx.stroke(cgRect.centered)
    }
}
