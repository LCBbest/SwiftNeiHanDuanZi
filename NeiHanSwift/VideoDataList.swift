//
//	VideoDataList.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct VideoDataList{

	var videoComments : [VideoComment]!
	var videoGroup : VideoGroup!
    var videoAd:Ad!
    var videoRoom:VideoRoom!
	var displayTime : Float!
	var onlineTime : Float!
	var type : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		videoComments = [VideoComment]()
		if let videoCommentsArray = dictionary["comments"] as? [NSDictionary]{
			for dic in videoCommentsArray{
				let value = VideoComment(fromDictionary: dic)
				videoComments.append(value)
			}
		}
		if let videoGroupData = dictionary["group"] as? NSDictionary{
				videoGroup = VideoGroup(fromDictionary: videoGroupData)
        }
        if let videoAdData = dictionary["ad"] as? NSDictionary{
            videoAd = Ad(fromDictionary: videoAdData)
        }
        if let videoRoomData = dictionary["room"] as? NSDictionary{
            videoRoom = VideoRoom(fromDictionary: videoRoomData)
        }
		displayTime = dictionary["display_time"] as? Float
		onlineTime = dictionary["online_time"] as? Float
		type = dictionary["type"] as? Int
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if videoComments != nil{
			var dictionaryElements = [NSDictionary]()
			for videoCommentsElement in videoComments {
				dictionaryElements.append(videoCommentsElement.toDictionary())
			}
			dictionary["VideoComments"] = dictionaryElements
		}
		if videoGroup != nil{
			dictionary["VideoGroup"] = videoGroup.toDictionary()
		}
		if displayTime != nil{
			dictionary["display_time"] = displayTime
		}
		if onlineTime != nil{
			dictionary["online_time"] = onlineTime
		}
		if type != nil{
			dictionary["type"] = type
		}
		return dictionary
	}

}
