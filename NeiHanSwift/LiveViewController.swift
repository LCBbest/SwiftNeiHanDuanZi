//
//  LiveViewController.swift
//  NeiHanSwift
//
//  Created by LCB on 2016/11/16.
//  Copyright © 2016年 LCB. All rights reserved.
//

import UIKit
import Just
import Kingfisher

class LiveViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var dataTableView = UITableView()
    let refreshControl = UIRefreshControl()
    
    var list:[LiveCell] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        loadData()
        // Do any additional setup after loading the view.
    }
    
    func initView(){
        self.dataTableView = UITableView(frame: CGRect(x: 0, y: 0, width: MAIN_WIDTH, height: MAIN_HEIGHT - 44 - 64 - 30))
        self.dataTableView.delegate = self
        self.dataTableView.dataSource = self
        self.dataTableView.register(LiveTableViewCell.self, forCellReuseIdentifier: "LIVECELL")
        refreshControl.addTarget(self, action: #selector(loadData), for: .valueChanged)
        self.view.addSubview(self.dataTableView)
        self.dataTableView.addSubview(refreshControl)
    }
    
    func loadData(){
        Just.post(livelistUrl) { (r) in
            
            guard let json = r.json as? NSDictionary else{
                print("error")
                return
            }
            let lives = RootClass(fromDictionary: json).livedata!
            
            self.list = lives.map({ (live) -> LiveCell in
                
                return LiveCell(portraot: live.seconddata.owner.avatarMedium.uri, largeportraot: live.seconddata.owner.avatarLarge.uri ,nick: live.seconddata.owner.nickname, location: live.seconddata.owner.city, viewers: live.seconddata.userCount, url: live.seconddata.streamUrl.rtmpPullUrl)
            })
            
            OperationQueue.main.addOperation {
                self.dataTableView.reloadData()
                self.refreshControl.endRefreshing()
            }
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }

}
extension LiveViewController{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footView = UIView(frame: CGRect(x: 0, y: 0, width: Int(MAIN_WIDTH), height: 10))
        footView.backgroundColor = UIColor(hue: 0, saturation: 0, brightness: 0.93, alpha: 1)
        return footView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "LIVECELL", for: indexPath) as! LiveTableViewCell
        let live = list[indexPath.section]
        let imgurl = URL(string: imgUrl + live.portraot + ".jpg")
        let largeImgUrl = URL(string: imgUrl + live.largeportraot + ".jpg")
        cell.avatorImg.kf.setImage(with: imgurl)
        cell.avatorLargeImg.kf.setImage(with: largeImgUrl)
        cell.nickName.text = live.nick
        cell.locationLabel.text = live.location
        let viewersCountsText = NSMutableAttributedString(string: "\(live.viewers)人观看")
        let lengthCount = "\(live.viewers)".characters.count
        let range1 = NSRange(location: 0, length: lengthCount)
        viewersCountsText.addAttribute(NSForegroundColorAttributeName, value: UIColor(red: 255/255, green: 99/255, blue: 71/255, alpha: 1), range: range1)
        cell.viewersCounts.attributedText = viewersCountsText
        cell.selectionStyle = .none
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let living = LivingViewController()
        living.live = list[indexPath.section]
        living.hidesBottomBarWhenPushed = true
        navigationController?.setNavigationBarHidden(true, animated: true)
        self.navigationController?.pushViewController(living, animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 470
    }
}
