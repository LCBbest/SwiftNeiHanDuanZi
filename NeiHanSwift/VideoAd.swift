//
//	RootClass.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct VideoAd{

	var ad : Ad!
	var displayTime : Float!
	var onlineTime : Float!
	var type : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		if let adData = dictionary["ad"] as? NSDictionary{
				ad = Ad(fromDictionary: adData)
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
		if ad != nil{
			dictionary["ad"] = ad.toDictionary()
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
