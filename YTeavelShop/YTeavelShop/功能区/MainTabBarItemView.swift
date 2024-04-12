//
//  MainTabBarItemView.swift
//  YTeavelShop
//
//  Created by iOS专用 on 2024/4/11.
//

import UIKit
import ESTabBarController_swift
class MainTabBarItemView: ESTabBarItemContentView {

    convenience init() {
        self.init(frame: .zero)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        textColor = .hexString("#9D9D9D")
        highlightTextColor = .hexString("#333333")
        renderingMode = .alwaysOriginal
        itemContentMode = .alwaysOriginal
        titleLabel.font = UIFont.systemFont(ofSize: 10, weight: .medium)
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
