import UIKit

/*:
 ## Class
 */
class VideoMode {
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    //    var compressionRatio: Double // cannot have a uninitialized non-optional property
}
let vMode = VideoMode()

class ExtendedVideoMode {
    var interlaced = false
    var frameRate = 0.0
    var name: String?
    /// Uninitialize optionals need to be initialize in the init()
    var compressionRatio: Double
    init() {
        compressionRatio = 0.8
    }
}
let evMode = ExtendedVideoMode()

