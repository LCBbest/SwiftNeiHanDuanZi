//
//  HomeMainViewController.swift
//  NeiHanSwift
//
//  Created by LCB on 2016/11/15.
//  Copyright © 2016年 LCB. All rights reserved.
//

import UIKit

class HomeMainViewController: UIViewController {

    var backString = String()
    enum TabIndex : Int {
        case firstChildTab = 0
        case secondChildTab = 1
    }
    var currentViewController: UIViewController?
    lazy var firstChildTabVC: UIViewController? = {
        let firstChildTabVC = SelectedViewController()
        return firstChildTabVC
    }()
    lazy var secondChildTabVC : UIViewController? = {
        let secondChildTabVC = CareBoutViewController()
        return secondChildTabVC
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initView(){
        //导航栏初始化
        let leftBarItem = UIBarButtonItem(image: UIImage(named:"头像"), style: .plain, target: self, action: #selector(HomeMainViewController.checkIsLogin))
        let rightbarItem = UIBarButtonItem(image: UIImage(named:"编辑"), style: .plain, target: self, action: #selector(HomeMainViewController.pushEditView))
        leftBarItem.tintColor = UIColor(hue: 23, saturation: 0.33, brightness: 0.41, alpha: 1)
        rightbarItem.tintColor = UIColor(hue: 23, saturation: 0.33, brightness: 0.41, alpha: 1)
        self.navigationItem.leftBarButtonItem = leftBarItem
        self.navigationItem.rightBarButtonItem = rightbarItem
        self.navigationItem.titleView = titleView()
        displayCurrentTab(0)
    }
    
    func checkIsLogin(){
        //不做是否登录判断，直接认定未登录。
        let isLogin = false
        if !isLogin{
            pushLoginView()
        }
    }
    
    func pushLoginView(){
        print("Login")
    }
    
    func pushEditView(){
        print("Edit")
    }
    
    func titleView() ->UIView{
        let items=["精选" as AnyObject,"发现" as AnyObject] as [AnyObject]
        let segmented = UISegmentedControl(items: items)
        let font = UIFont.systemFont(ofSize: 16)
        segmented.setTitleTextAttributes([NSFontAttributeName: font],
                                         for: UIControlState())
        segmented.frame = CGRect(x: 0, y: 0, width: 150, height: 30)
        segmented.center=self.view.center
        segmented.selectedSegmentIndex = TabIndex.firstChildTab.rawValue
        segmented.tintColor = UIColor(hue: 23, saturation: 0.33, brightness: 0.41, alpha: 1)
        segmented.addTarget(self, action: #selector(HomeMainViewController.switchTabs(_:)),for: UIControlEvents.valueChanged)
        return segmented
    }
    
    func displayCurrentTab(_ tabIndex: Int){
        if let vc = viewControllerForSelectedSegmentIndex(tabIndex) {
            
            self.addChildViewController(vc)
            vc.didMove(toParentViewController: self)
            vc.view.frame = self.view.bounds
            self.view.addSubview(vc.view)
            self.currentViewController = vc
        }
    }
    func viewControllerForSelectedSegmentIndex(_ index: Int) -> UIViewController? {
        var vc: UIViewController?
        switch index {
        case TabIndex.firstChildTab.rawValue :
            vc = firstChildTabVC
        case TabIndex.secondChildTab.rawValue :
            vc = secondChildTabVC
        default:
            return nil
        }
        
        return vc
    }
    
    func switchTabs(_ sender: AnyObject) {
        self.currentViewController!.view.removeFromSuperview()
        self.currentViewController!.removeFromParentViewController()
        displayCurrentTab(sender.selectedSegmentIndex)
    }

}
