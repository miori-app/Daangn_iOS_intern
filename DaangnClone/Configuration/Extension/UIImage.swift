//
//  UIImage.swift
//  DaangnClone
//
//  Created by miori Lee on 2021/07/16.
//

import UIKit

extension UIImage
{
    /// Given a required height, returns a (rasterised) copy
    /// of the image, aspect-fitted to that height.

    // MARK: 이미지 리사이즈
    // reference : https://stackoverflow.com/questions/7645454/resize-uiimage-by-keeping-aspect-ratio-and-width
    func aspectFittedToHeight(_ newHeight: CGFloat) -> UIImage
    {
        let scale = newHeight / self.size.height
        let newWidth = self.size.width * scale
        let newSize = CGSize(width: newWidth, height: newHeight)
        let renderer = UIGraphicsImageRenderer(size: newSize)

        return renderer.image { _ in
            self.draw(in: CGRect(origin: .zero, size: newSize))
        }
    }
}
