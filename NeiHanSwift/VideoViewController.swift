//
//  VideoViewController.swift
//  NeiHanSwift
//
//  Created by LCB on 2016/11/16.
//  Copyright © 2016年 LCB. All rights reserved.
//

import UIKit
import Just
import Kingfisher

class VideoViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var videoListTableView = UITableView()
    var videolist:[VideoCell] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        initView()
        LoadVideoList()
        // Do any additional setup after loading the view.
    }
    
    func initView(){
        videoListTableView = UITableView(frame: CGRect(x: 0, y: 0, width: MAIN_WIDTH, height: MAIN_HEIGHT - 64 - 44 - 30))
        videoListTableView.delegate = self
        videoListTableView.dataSource = self
        videoListTableView.register(VideoTableViewCell.self, forCellReuseIdentifier: "VIDEOCELL")
        self.view.addSubview(videoListTableView)
    }

    func LoadVideoList(){
        Just.post(VideoListUrl) { (r) in
            
            guard let json = r.json as? NSDictionary else{
                print("error")
                return
            }
            let videos = Video(fromDictionary: json).videoData.videoDataList!
            
            self.videolist = videos.map({ (video) -> VideoCell in
                if video.videoGroup != nil{
                    
                    return VideoCell(avator: video.videoGroup.user.avatarUrl, title: video.videoGroup.title, nick: video.videoGroup.user.name, viewers: video.videoGroup.playCount, url: video.videoGroup.mp4Url, flagText:video.videoGroup.categoryName,imageUrl:video.videoGroup.largeCover.uri)
                }
                    
                else if video.videoAd != nil
                {
                    
                    return VideoCell(avator: video.videoAd.avatarUrl, title: video.videoAd.title, nick: video.videoAd.avatarName, viewers: 0, url: video.videoAd.gifUrl, flagText:video.videoAd.label,imageUrl:video.videoAd.gifUrl)
                }
                else if video.videoRoom != nil{
                    return VideoCell(avator: video.videoRoom.owner.avatarThumb.uri, title: video.videoRoom.text, nick: video.videoRoom.owner.nickname, viewers: video.videoRoom.userCount, url: video.videoRoom.streamUrl.rtmpPullUrl, flagText:video.videoRoom.labelText,imageUrl:video.videoRoom.owner.avatarLarge.uri)
                }
                else{
                    return VideoCell(avator: "", title: "", nick: "", viewers: 0, url: "", flagText:"", imageUrl:"")
                }
                
            })
            
            OperationQueue.main.addOperation {
                self.videoListTableView.reloadData()
//                self.refreshControl.endRefreshing()
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
extension VideoViewController{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return videolist.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let videoInfo = videolist[indexPath.section]
        let titleHeight = heightOfString(data: videoInfo.title,fontSize: 16,width: MAIN_WIDTH - 16)
        return 300 + titleHeight - 18
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footView = UIView(frame: CGRect(x: 0, y: 0, width: Int(MAIN_WIDTH), height: 10))
        footView.backgroundColor = UIColor(hue: 0, saturation: 0, brightness: 0.93, alpha: 1)
        return footView
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 10
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let cell = tableView.cellForRow(at: indexPath) as! VideoTableViewCell
//        cell.videoImage.isHidden = true
//        cell.videoPlayer.play()
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let videoInfo = videolist[indexPath.section]
        let cell = tableView.dequeueReusableCell(withIdentifier: "VIDEOCELL", for: indexPath) as! VideoTableViewCell
        let avatorUrl = URL(string: videoInfo.avator)
        let videoUrl = URL(string: videoInfo.url)
        let coverImage = URL(string: videoImageUrl + videoInfo.imageUrl + ".jpg")
        
        cell.selectionStyle = .none
        
        cell.setData(avatorUrl: avatorUrl, flagText: videoInfo.flagText, nick: videoInfo.nick, title: videoInfo.title,videoUrl: videoUrl,coverImageUrl:coverImage!)
        return cell
    }
    
}
