//
//  BaseViewController.swift
//  YTeavelShop
//
//  Created by iOS专用 on 2024/4/10.
//

import UIKit

class BaseViewController: UIViewController {
    lazy var navigationView:UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: kScreenWidth, height: view.getNavigationViewHeight()))
        view.backgroundColor = .white
        return view
    }()
    //标题
    lazy var titleLabel:UILabel = {
        let label = UILabel.initLabel(title: "", titleColor: .black, font: UIFont.systemFont(ofSize: 18, weight: .medium))
        return label
    }()
    //左按钮
    lazy var leftBarBtn : UIButton = {
        let btn = UIButton()
        btn.setImage(UIImage(named: "Nav_Back"), for: .normal)
        btn.addTarget(self, action: #selector(clickLeftBarBtn(_:)), for: .touchUpInside)
        return btn
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        if #available(iOS 11.0, *) {
            UIScrollView.appearance().contentInsetAdjustmentBehavior = UIScrollView.ContentInsetAdjustmentBehavior.never
        } else {
            self.automaticallyAdjustsScrollViewInsets = false
        }
        addNavigationView()
        //设置一极页面，隐藏返回按钮
        if let nav = self.navigationController , nav.children.count == 1 {
            leftBarBtn.isHidden = true
        }
        // Do any additional setup after loading the view.
    }
    func addNavigationView(){
        view.addSubview(navigationView)
        navigationView.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(view.getStatusBarHeight())
            make.bottom.equalToSuperview()
        }
        navigationView.addSubview(leftBarBtn)
        leftBarBtn.snp.makeConstraints { (make) in
            make.bottom.equalToSuperview().offset(-10)
            make.left.equalTo(15)
            make.size.equalTo(CGSize(width: 25, height: 25))
        }
    }
    @objc func clickLeftBarBtn(_ sender:UIButton) {
        if self.presentingViewController != nil {
            self.dismiss(animated: true, completion: nil)
        }else{
            self.navigationController?.popViewController(animated: true)
        }
        
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
