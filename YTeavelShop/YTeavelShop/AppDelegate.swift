//
//  AppDelegate.swift
//  YTeavelShop
//
//  Created by Merlin on 2023/7/24.
//
let ScreenWidth = UIScreen.main.bounds.width
let ScreenHeight = UIScreen.main.bounds.height
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: CGRect(x: 0, y: 0, width: ScreenWidth, height: ScreenHeight))
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
        return true
    }



}

