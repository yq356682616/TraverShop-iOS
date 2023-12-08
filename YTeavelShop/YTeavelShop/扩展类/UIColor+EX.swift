//
//  UIColor+EX.swift
//  YTeavelShop
//
//  Created by iOS专用 on 2023/12/8.
//
import UIKit

extension UIColor {
    convenience init(r : CGFloat,g : CGFloat,b : CGFloat, alpha:CGFloat = 1.0) {
        self.init(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: alpha)
    }
    static func randomColor()->UIColor{
        return UIColor(red: CGFloat(arc4random()%256)/255.0, green: CGFloat(arc4random()%256)/255.0, blue: CGFloat(arc4random()%256)/255.0, alpha: 1)
    }
    public static func hexString(_ hexString: String) -> UIColor {
        
        var cString = hexString.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines)
        
        if cString.count < 6 {
            return UIColor.black
        }
        if cString.hasPrefix("0X") {
            let index = cString.index(cString.startIndex, offsetBy: 2)
            cString = String(cString[index...])
        }
        if cString.hasPrefix("#") {
            let index = cString.index(cString.startIndex, offsetBy: 1)
            cString = String(cString[index...])
        }
        if cString.count != 6 {
            return UIColor.black
        }
        var range:NSRange = NSMakeRange(0, 2)
        let rString = (cString as NSString).substring(with: range)
        range.location = 2
        let gString = (cString as NSString).substring(with: range)
        range.location = 4
        let bString = (cString as NSString).substring(with: range)
        
        var r: UInt32 = 0x0
        var g: UInt32 = 0x0
        var b: UInt32 = 0x0
        Scanner.init(string: rString).scanHexInt32(&r)
        Scanner.init(string: gString).scanHexInt32(&g)
        Scanner.init(string: bString).scanHexInt32(&b)
        return UIColor.init(r: CGFloat(r), g: CGFloat(g), b: CGFloat(b))
    }
    
}
