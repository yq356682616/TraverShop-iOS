//
//  MinePageViewController.swift
//  YTeavelShop
//
//  Created by iOS专用 on 2024/4/11.
//

import UIKit

class MinePageViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .randomColor()
        titleLabel.text = "我的"
        // Do any additional setup after loading the view.
    }
    @IBAction func testClick(_ sender: UIButton) {
        let test = TestViewController()
        navigationController?.pushViewController(test, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    deinit{
        print("++++++++++释放掉了++++++++++我的")
    }
}
