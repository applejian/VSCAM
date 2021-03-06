

import Foundation

class ImageDetailModel {

    var imageBrief: PhotoObject?

    var imageDetail: PhotoDetailObject?

    var image: UIImage?

    func headImageHeight() -> CGFloat {
        var scale = 1.f()
        if let tryScale = (imageBrief?.scale ?? imageDetail?.scale) {
            scale = tryScale.f()
        }
        return scale * UIScreen.main.bounds.size.width
    }
}
