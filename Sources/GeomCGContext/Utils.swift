import UIKit
import Geom

public extension Rect {
    var cgRect: CGRect {
        CGRect(x: pos.x, y: pos.y, width: w, height: h)
    }
}

public extension CGRect {
    var rect: Rect {
        Rect.init(pos: Vec3(x: Double(self.origin.x),
                            y: Double(self.origin.y)),
                  w: Double(self.width),
                  h: Double(self.height))
    }

    static func fromCenter(x: Double, y: Double, width: Double, height: Double) -> CGRect {
        let px = x - width / 2.0
        let py = y - height / 2.0
        return CGRect(x: px, y: py, width: width, height: height)
    }

    var centered: CGRect {
        self.offsetBy(dx: -width/2, dy: -height/2)
    }
}
