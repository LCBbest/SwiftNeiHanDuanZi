//
//	RootClass.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Video{

	var videoData : VideoData!
	var message : String!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		if let videoDataData = dictionary["data"] as? NSDictionary{
				videoData = VideoData(fromDictionary: videoDataData)
			}
		message = dictionary["message"] as? String
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if videoData != nil{
			dictionary["data"] = videoData.toDictionary()
		}
		if message != nil{
			dictionary["message"] = message
		}
		return dictionary
	}

}
