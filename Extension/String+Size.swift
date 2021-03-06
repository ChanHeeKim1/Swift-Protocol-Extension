//
//  String+Size.swift
//  BBS
//
//  Created by 이광용 on 2018. 7. 6..
//  Copyright © 2018년 이광용. All rights reserved.
//

import UIKit

extension String {
    func width(font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: UIScreen.main.bounds.width, height: .greatestFiniteMagnitude)
        let boundingBox = self.trimmingCharacters(in: .whitespacesAndNewlines).boundingRect(with: constraintRect, options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: [NSAttributedStringKey.font: font], context: nil)
        return boundingBox.width
    }
    
    func height(font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: UIScreen.main.bounds.width, height: .greatestFiniteMagnitude)
        let boundingBox = self.trimmingCharacters(in: .whitespacesAndNewlines).boundingRect(with: constraintRect, options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: [NSAttributedStringKey.font: font], context: nil)
        return boundingBox.height
    }
}

extension UILabel {
    var textSize: CGSize {
        let constraintRect = CGSize(width: UIScreen.main.bounds.width, height: .greatestFiniteMagnitude)
        let boundingBox = self.text?.trimmingCharacters(in: .whitespacesAndNewlines).boundingRect(with: constraintRect, options: [.usesLineFragmentOrigin, .usesFontLeading], attributes: [NSAttributedStringKey.font: self.font], context: nil)
        
        if let boundingBox = boundingBox {
            return CGSize(width: boundingBox.width, height: boundingBox.height)
        }
        return CGSize(width: 0, height: 0)
    }
}
