//
//  UILabel+EX.swift
//  YTeavelShop
//
//  Created by iOS专用 on 2024/4/11.
//

import UIKit
extension UILabel{
    class func initLabel(title:String? = nil,titleColor:UIColor? = nil,font:UIFont) -> UILabel {
        let label = UILabel()
        label.text = title
        if titleColor == nil {
            label.textColor = UIColor.black
        }else{
            label.textColor = titleColor
        }
        label.font = font
        return label
    }
}
