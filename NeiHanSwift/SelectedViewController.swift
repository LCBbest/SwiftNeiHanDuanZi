//
//  SelectedViewController.swift
//  NeiHanSwift
//
//  Created by LCB on 2016/11/16.
//  Copyright © 2016年 LCB. All rights reserved.
//

import UIKit
import PagingMenuController

private struct PagingMenuOptions: PagingMenuControllerCustomizable {
    fileprivate var componentType: ComponentType {
        return .all(menuOptions: MenuOptions(), pagingControllers: pagingControllers)
    }
    
    fileprivate var pagingControllers: [UIViewController] {
        let liveView = LiveViewController()
        let recomView = RecommendViewController()
        let videoView = VideoViewController()
        let picView = PictrueViewController()
        let jokView = JokViewController()
        let essView = EssenceViewController()
        let cityView = CityViewController()
        let gameView = GameViewController()
        return [liveView, recomView,videoView,picView,jokView,essView,cityView,gameView]
    }
    
    fileprivate struct MenuOptions: MenuViewCustomizable {
        var displayMode: MenuDisplayMode {
            return .standard(widthMode: .flexible, centerItem: false, scrollingMode: .pagingEnabled)
        }
        var focusMode: MenuFocusMode {
            return .none
        }
        var itemsOptions: [MenuItemViewCustomizable] {
            return [LiveItem(),RecomItem(),VideoItem(),PicItem(), JokItem(),EssItem(), CityItem(),GameItem()]
        }
        var height: CGFloat {
            return 30
        }
    }
    fileprivate struct LiveItem: MenuItemViewCustomizable {
        var displayMode: MenuItemDisplayMode {
            return .text(title: MenuItemText(text: "直播"))
        }
    }
    fileprivate struct RecomItem: MenuItemViewCustomizable {
        var displayMode: MenuItemDisplayMode {
            return .text(title: MenuItemText(text: "推荐"))
        }
    }
    fileprivate struct VideoItem: MenuItemViewCustomizable {
        var displayMode: MenuItemDisplayMode {
            return .text(title: MenuItemText(text: "视频"))
        }
    }
    fileprivate struct PicItem: MenuItemViewCustomizable {
        var displayMode: MenuItemDisplayMode {
            return .text(title: MenuItemText(text: "图片"))
        }
    }
    fileprivate struct JokItem: MenuItemViewCustomizable {
        var displayMode: MenuItemDisplayMode {
            return .text(title: MenuItemText(text: "段子"))
        }
    }
    fileprivate struct EssItem: MenuItemViewCustomizable {
        var displayMode: MenuItemDisplayMode {
            return .text(title: MenuItemText(text: "精华"))
        }
    }
    fileprivate struct CityItem: MenuItemViewCustomizable {
        var displayMode: MenuItemDisplayMode {
            return .text(title: MenuItemText(text: "同城"))
        }
    }
    fileprivate struct GameItem: MenuItemViewCustomizable {
        var displayMode: MenuItemDisplayMode {
            return .text(title: MenuItemText(text: "游戏"))
        }
    }
}
class SelectedViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func initView(){
        let options = PagingMenuOptions()
        let pagingMenuController = PagingMenuController(options: options)
        addChildViewController(pagingMenuController)
        view.addSubview(pagingMenuController.view)
        pagingMenuController.didMove(toParentViewController: self)
        let underLine = UIView(frame: CGRect(x: 0, y: 31, width: MAIN_WIDTH, height: 1))
        underLine.backgroundColor = UIColor.gray
        view.addSubview(underLine)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
