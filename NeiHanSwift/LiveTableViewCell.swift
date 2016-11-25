//
//  LiveTableViewCell.swift
//  NeiHanSwift
//
//  Created by LCB on 2016/11/16.
//  Copyright © 2016年 LCB. All rights reserved.
//

import UIKit

class LiveTableViewCell: UITableViewCell {

    var avatorImg = UIImageView()
    var nickName = UILabel()
    var locationLabel = UILabel()
    var viewersCounts = UILabel()
    var avatorLargeImg = UIImageView()
    var alphaView = UIView()
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        super.awakeFromNib()
        avatorImg = UIImageView(frame: CGRect(x: 5, y: 5, width: 50, height: 50))
        avatorImg.layer.masksToBounds = true
        avatorImg.layer.cornerRadius = 25
        nickName = UILabel(frame: CGRect(x: 58, y: 8, width: 200, height: 18))
        nickName.font = UIFont.systemFont(ofSize: 16)
        nickName.textColor = UIColor.black
        locationLabel = UILabel(frame: CGRect(x: 58, y: 35, width: 200, height: 16))
        locationLabel.font = UIFont.systemFont(ofSize: 14)
        locationLabel.textColor = UIColor.gray
        avatorLargeImg = UIImageView(frame: CGRect(x: 5, y: 60, width: MAIN_WIDTH - 10, height: 400))
        //avatorLargeImg.contentMode = .scaleAspectFill
        viewersCounts = UILabel(frame: CGRect(x: 5, y: avatorLargeImg.layer.bounds.height - 25, width: 150, height: 20))
        viewersCounts.font = UIFont.systemFont(ofSize: 18)
        viewersCounts.textColor = UIColor.white
        alphaView = UIView(frame: CGRect(x: 0, y: 0, width: Int(avatorLargeImg.layer.bounds.width), height: 30))
        alphaView.frame.origin.y = avatorLargeImg.layer.bounds.height - 30
        alphaView.backgroundColor = UIColor.black
        alphaView.alpha = 0.5
        self.contentView.addSubview(avatorImg)
        self.contentView.addSubview(nickName)
        self.contentView.addSubview(locationLabel)
        self.contentView.addSubview(avatorLargeImg)
        self.avatorLargeImg.addSubview(alphaView)
        self.avatorLargeImg.addSubview(viewersCounts)
        // Initialization code
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
