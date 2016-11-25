//
//	RootClass.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct VideoRoom{

	var allowDislike : Bool!
	var cellStyle : Int!
	var createTime : Int!
	var dislikeReason : [DislikeReason]!
	var finishTime : Int!
	var id : Double!
	var labelText : String!
	var owner : Owner!
	var shareUrl : String!
	var stats : Stat!
	var status : Int!
	var streamId : Double!
	var streamUrl : StreamUrl!
	var text : String!
	var title : String!
	var userCount : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		allowDislike = dictionary["allow_dislike"] as? Bool
		cellStyle = dictionary["cell_style"] as? Int
		createTime = dictionary["create_time"] as? Int
		dislikeReason = [DislikeReason]()
		if let dislikeReasonArray = dictionary["dislike_reason"] as? [NSDictionary]{
			for dic in dislikeReasonArray{
				let value = DislikeReason(fromDictionary: dic)
				dislikeReason.append(value)
			}
		}
		finishTime = dictionary["finish_time"] as? Int
		id = dictionary["id"] as? Double
		labelText = dictionary["label_text"] as? String
		if let ownerData = dictionary["owner"] as? NSDictionary{
				owner = Owner(fromDictionary: ownerData)
			}
		shareUrl = dictionary["share_url"] as? String
		if let statsData = dictionary["stats"] as? NSDictionary{
				stats = Stat(fromDictionary: statsData)
			}
		status = dictionary["status"] as? Int
		streamId = dictionary["stream_id"] as? Double
		if let streamUrlData = dictionary["stream_url"] as? NSDictionary{
				streamUrl = StreamUrl(fromDictionary: streamUrlData)
			}
		text = dictionary["text"] as? String
		title = dictionary["title"] as? String
		userCount = dictionary["user_count"] as? Int
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if allowDislike != nil{
			dictionary["allow_dislike"] = allowDislike
		}
		if cellStyle != nil{
			dictionary["cell_style"] = cellStyle
		}
		if createTime != nil{
			dictionary["create_time"] = createTime
		}
		if dislikeReason != nil{
			var dictionaryElements = [NSDictionary]()
			for dislikeReasonElement in dislikeReason {
				dictionaryElements.append(dislikeReasonElement.toDictionary())
			}
			dictionary["dislike_reason"] = dictionaryElements
		}
		if finishTime != nil{
			dictionary["finish_time"] = finishTime
		}
		if id != nil{
			dictionary["id"] = id
		}
		if labelText != nil{
			dictionary["label_text"] = labelText
		}
		if owner != nil{
			dictionary["owner"] = owner.toDictionary()
		}
		if shareUrl != nil{
			dictionary["share_url"] = shareUrl
		}
		if stats != nil{
			dictionary["stats"] = stats.toDictionary()
		}
		if status != nil{
			dictionary["status"] = status
		}
		if streamId != nil{
			dictionary["stream_id"] = streamId
		}
		if streamUrl != nil{
			dictionary["stream_url"] = streamUrl.toDictionary()
		}
		if text != nil{
			dictionary["text"] = text
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
