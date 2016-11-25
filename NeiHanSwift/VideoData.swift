//
//	VideoData.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct VideoData{

	var videoDataList : [VideoDataList]!
	var hasMore : Bool!
	var maxTime : Float!
	var minTime : Int!
	var tip : String!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		videoDataList = [VideoDataList]()
		if let videoDataListArray = dictionary["data"] as? [NSDictionary]{
			for dic in videoDataListArray{
				let value = VideoDataList(fromDictionary: dic)
				videoDataList.append(value)
			}
		}
		hasMore = dictionary["has_more"] as? Bool
		maxTime = dictionary["max_time"] as? Float
		minTime = dictionary["min_time"] as? Int
		tip = dictionary["tip"] as? String
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if videoDataList != nil{
			var dictionaryElements = [NSDictionary]()
			for videoDataListElement in videoDataList {
				dictionaryElements.append(videoDataListElement.toDictionary())
			}
			dictionary["VideoDataList"] = dictionaryElements
		}
		if hasMore != nil{
			dictionary["has_more"] = hasMore
		}
		if maxTime != nil{
			dictionary["max_time"] = maxTime
		}
		if minTime != nil{
			dictionary["min_time"] = minTime
		}
		if tip != nil{
			dictionary["tip"] = tip
		}
		return dictionary
	}

}
