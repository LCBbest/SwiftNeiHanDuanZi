//
//  VideoTableViewCell.swift
//  NeiHanSwift
//
//  Created by LCB on 2016/11/18.
//  Copyright © 2016年 LCB. All rights reserved.
//

import UIKit



class VideoTableViewCell: UITableViewCell {

    var avatorImage = UIImageView()
    let nameLabel = UILabel()
    let titleLabel = UILabel()
    let flag = UIButton()
    var videoPlayer = XCAVPlayerView()
    let videoBackView = UIView()
    let videoImage = UIImageView()
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        avatorImage = UIImageView(frame: CGRect(x: 8, y: 8, width: 30, height: 30))
        avatorImage.layer.masksToBounds = true
        avatorImage.layer.cornerRadius = 15
        self.contentView.addSubview(avatorImage)
        nameLabel.frame = CGRect(x: 43, y: 10, width: MAIN_WIDTH - 50, height: 16)
        nameLabel.font = UIFont.systemFont(ofSize: 14)
        nameLabel.textColor = UIColor.gray
        self.contentView.addSubview(nameLabel)
        titleLabel.font = UIFont.systemFont(ofSize: 16)
        titleLabel.textColor = UIColor.black
        self.contentView.addSubview(titleLabel)
        flag.layer.masksToBounds = true
        flag.layer.cornerRadius = 10
        flag.layer.borderWidth = 1
        flag.layer.borderColor = UIColor(hue: 23, saturation: 0.33, brightness: 0.41, alpha: 1).cgColor
        flag.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        flag.setTitleColor(UIColor(hue: 23, saturation: 0.33, brightness: 0.41, alpha: 1), for: .normal)
        self.contentView.addSubview(flag)
        self.contentView.addSubview(videoPlayer)
       
        
    }
    
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setData(avatorUrl:URL?,flagText:String,nick:String,title:String,videoUrl:URL?,coverImageUrl:URL){
        
        let flagWidth = widthOfString(data:flagText,fontSize: 14)
        
        var titleHeight = heightOfString(data: title,fontSize: 16,width: MAIN_WIDTH - 16)
        if title == ""{
            titleHeight = 0
        }
        nameLabel.text = nick
        nameLabel.textAlignment = .left
        titleLabel.text = title
        titleLabel.numberOfLines = 0
        titleLabel.frame = CGRect(x: 8, y: 40, width: MAIN_WIDTH - 16, height: titleHeight)
        avatorImage.kf.setImage(with: avatorUrl)
        flag.frame = CGRect(x: 8, y: 45 + titleHeight, width: flagWidth + 10, height: 18)
        flag.setTitle(flagText, for: .normal)
        videoBackView.frame = CGRect(x: 8, y: 45 + titleHeight + 20, width: MAIN_WIDTH - 16, height: 200)
        videoPlayer.frame = videoBackView.bounds
        videoBackView.addSubview(videoPlayer)
        
        self.contentView.addSubview(videoBackView)
        self.videoPlayer.playerUrl = videoUrl
        print("\(nick)-----\(coverImageUrl)")
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
