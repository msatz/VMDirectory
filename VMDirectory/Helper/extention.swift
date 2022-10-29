//
//  extention.swift
//  VMDirectory
//
//  Created by Sathish on 30/10/22.
//

import Foundation
import UIKit

extension UIFont {

    /// Scaled and styled version of any custom Font
    ///
    /// - Parameters:
    ///   - name: Name of the Font
    ///   - textSize: text szie i.e 10, 15, 20, ...
    /// - Returns: The scaled custom Font version with the given textSize
    static func scaledFont(name: String, textSize size: CGFloat) -> UIFont {
        guard let customFont = UIFont(name: name, size: size) else {
            fatalError("Failed to load the \(name) font.")
        }
        return UIFontMetrics.default.scaledFont(for: customFont)
    }
}
