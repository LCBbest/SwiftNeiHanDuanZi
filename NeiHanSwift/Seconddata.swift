//
//	Seconddata.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Seconddata{

	var firstStats : FirstStat!
	var cellStyle : Int!
	var createTime : Int!
	var dynamicCover : AnyObject!
	var dynamicCoverLow : AnyObject!
	var enableRoomPerspective : Bool!
	var finishTime : Int!
	var id : Double!
	var idStr : String!
	var owner : Owner!
	var shareUrl : String!
	var status : Int!
	var streamId : Double!
	var streamIdStr : String!
	var streamUrl : StreamUrl!
	var title : String!
	var userCount : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		if let firstStatsData = dictionary["stats"] as? NSDictionary{
				firstStats = FirstStat(fromDictionary: firstStatsData)
			}
		cellStyle = dictionary["cell_style"] as? Int
		createTime = dictionary["create_time"] as? Int
		dynamicCover = dictionary["dynamic_cover"] as? AnyObject
		dynamicCoverLow = dictionary["dynamic_cover_low"] as? AnyObject
		enableRoomPerspective = dictionary["enable_room_perspective"] as? Bool
		finishTime = dictionary["finish_time"] as? Int
		id = dictionary["id"] as? Double
		idStr = dictionary["id_str"] as? String
		if let ownerData = dictionary["owner"] as? NSDictionary{
				owner = Owner(fromDictionary: ownerData)
			}
		shareUrl = dictionary["share_url"] as? String
		status = dictionary["status"] as? Int
		streamId = dictionary["stream_id"] as? Double
		streamIdStr = dictionary["stream_id_str"] as? String
		if let streamUrlData = dictionary["stream_url"] as? NSDictionary{
				streamUrl = StreamUrl(fromDictionary: streamUrlData)
			}
		title = dictionary["title"] as? String
		userCount = dictionary["user_count"] as? Int
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if firstStats != nil{
			dictionary["First_stats"] = firstStats.toDictionary()
		}
		if cellStyle != nil{
			dictionary["cell_style"] = cellStyle
		}
		if createTime != nil{
			dictionary["create_time"] = createTime
		}
		if dynamicCover != nil{
			dictionary["dynamic_cover"] = dynamicCover
		}
		if dynamicCoverLow != nil{
			dictionary["dynamic_cover_low"] = dynamicCoverLow
		}
		if enableRoomPerspective != nil{
			dictionary["enable_room_perspective"] = enableRoomPerspective
		}
		if finishTime != nil{
			dictionary["finish_time"] = finishTime
		}
		if id != nil{
			dictionary["id"] = id
		}
		if idStr != nil{
			dictionary["id_str"] = idStr
		}
		if owner != nil{
			dictionary["owner"] = owner.toDictionary()
		}
		if shareUrl != nil{
			dictionary["share_url"] = shareUrl
		}
		if status != nil{
			dictionary["status"] = status
		}
		if streamId != nil{
			dictionary["stream_id"] = streamId
		}
		if streamIdStr != nil{
			dictionary["stream_id_str"] = streamIdStr
		}
		if streamUrl != nil{
			dictionary["stream_url"] = streamUrl.toDictionary()
		}
		if title != nil{
			dictionary["title"] = title
		}
		if userCount != nil{
			dictionary["user_count"] = userCount
		}
		return dictionary
	}

}
