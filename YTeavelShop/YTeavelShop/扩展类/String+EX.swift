//
//  String+EX.swift
//  YTeavelShop
//
//  Created by iOS专用 on 2023/12/8.
//

import UIKit
extension String {
    //通过宽度获取高度
    func getHeight(width: CGFloat, font: UIFont, lineSpacing: CGFloat = 0) -> CGFloat {
        
        let attStr = NSMutableAttributedString(string: self)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        attStr.addAttributes([NSAttributedString.Key.font : font, NSAttributedString.Key.paragraphStyle : paragraphStyle], range: NSRange(location: 0, length: attStr.length))
        let height = attStr.boundingRect(with: CGSize(width: width, height: CGFloat(MAXFLOAT)), options: [.usesLineFragmentOrigin], context: nil).size.height
        
        return ceil(height)
    }
    //通过高度获取宽度
    func getWidth(height: CGFloat, font: UIFont, lineSpacing: CGFloat = 0) -> CGFloat {
        
        let attStr = NSMutableAttributedString(string: self)
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        attStr.addAttributes([NSAttributedString.Key.font : font, NSAttributedString.Key.paragraphStyle : paragraphStyle], range: NSRange(location: 0, length: attStr.length))
        let width = attStr.boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: height), options: [.usesLineFragmentOrigin], context: nil).size.width
        
        return ceil(width)
    }
}
