//
//  NetWork.swift
//  NeiHanSwift
//
//  Created by LCB on 2016/11/17.
//  Copyright © 2016年 LCB. All rights reserved.
//

import Foundation
import UIKit



//直播图片地址
let imgUrl = "http://p1.pstatp.com/live/"
//视频图片地址
let videoImageUrl = "http://p3.pstatp.com/"

//直播列表获取接口
let livelistUrl = "https://hotsoon.snssdk.com/hotsoon/feed/?iid=6291027115&os_version=10.1.1&os_api=18&app_name=joke_essay&channel=App%20Store&device_platform=iphone&idfa=BD051167-0CEB-448F-9110-3C38092A66DB&live_sdk_version=130&vid=618B662C-532C-4D64-BC81-10D3EE0508CF&openudid=14fe793d432e7fd8e6dabc930a36891d7eea9ee0&device_type=iPhone8,1&version_code=5.7.0&ac=WIFI&screen_width=750&device_id=11376313113&aid=7&action=refresh&count=20&cursor=0&type=recommend"

//推荐列表获取接口
let tuiJianListUrl = "http://ic.snssdk.com/neihan/stream/mix/v1/?content_type=-101&iid=6311318442&os_version=10.1.1&os_api=18&app_name=joke_essay&channel=App%20Store&device_platform=iphone&idfa=BD051167-0CEB-448F-9110-3C38092A66DB&live_sdk_version=130&vid=618B662C-532C-4D64-BC81-10D3EE0508CF&openudid=14fe793d432e7fd8e6dabc930a36891d7eea9ee0&device_type=iPhone8,1&version_code=5.7.1&ac=WIFI&screen_width=750&device_id=11376313113&aid=7&city=%E5%B1%B1%E4%B8%9C%E7%9C%81&content_type=-101&count=30&essence=1&latitude=36.67032961155405&longitude=117.1296576911845&message_cursor=0&min_time=1479338168&mpic=1"

//视频列表获取接口
let VideoListUrl = "http://ic.snssdk.com/neihan/stream/mix/v1/?content_type=-104&iid=6311318442&os_version=10.1.1&os_api=18&app_name=joke_essay&channel=App%20Store&device_platform=iphone&idfa=BD051167-0CEB-448F-9110-3C38092A66DB&live_sdk_version=130&vid=618B662C-532C-4D64-BC81-10D3EE0508CF&openudid=14fe793d432e7fd8e6dabc930a36891d7eea9ee0&device_type=iPhone8,1&version_code=5.7.1&ac=WIFI&screen_width=750&device_id=11376313113&aid=7&city=%E5%B1%B1%E4%B8%9C%E7%9C%81&content_type=-104&count=30&essence=1&latitude=36.70596322235227&longitude=117.5226442573545&message_cursor=34607244&min_time=1479434815&mpic=1"
