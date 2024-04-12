//
//  MainTabBarViewController.swift
//  YTeavelShop
//
//  Created by iOS专用 on 2024/4/10.
//

import UIKit
import ESTabBarController_swift
import SnapKit
class MainTabBarViewController: ESTabBarController {
    private struct ControllerItem {
        
        var controller: BaseViewController
        var title: String
        var normal: UIImage
        var highlighted: UIImage
        
        var normalImageOriginal: UIImage {
            return normal.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        }
        var highlightedImageOriginal: UIImage {
            return highlighted.withRenderingMode(UIImage.RenderingMode.alwaysOriginal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initFormalTab()
        // Do any additional setup after loading the view.
    }
    
    private func addItem(_ item: ControllerItem) -> BaseNavigationController {
        let nav = BaseNavigationController(rootViewController: item.controller)
        nav.tabBarItem = ESTabBarItem(MainTabBarItemView(), title: item.title, image: item.normalImageOriginal, selectedImage: item.highlightedImageOriginal)
        return nav
    }
    func initFormalTab(){
        let items = [ ControllerItem(controller:  MainPageViewController(), title: "首页", normal: UIImage(named: "Tab_Main_Nor")! , highlighted: UIImage(named: "Tab_Main_Sel")!),
                      ControllerItem(controller:  MinePageViewController(), title: "我的", normal: UIImage(named: "Tab_Mine_Nor")!, highlighted: UIImage(named: "Tab_Mine_Sel")!)
        ]
        viewControllers = items.map {
            return addItem($0)
        }
        tabBar.backgroundColor = .white
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
