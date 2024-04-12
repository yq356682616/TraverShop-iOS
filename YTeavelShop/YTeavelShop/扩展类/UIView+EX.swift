//
//  UIView+EX.swift
//  YTeavelShop
//
//  Created by iOS专用 on 2024/4/11.
//

import UIKit
extension UIView{
    func getStatusBarHeight() -> CGFloat {
        return UIApplication.shared.statusBarFrame.size.height
    }
    func getNavigationViewHeight()-> CGFloat{
        return self.getStatusBarHeight() + 44
    }
}
