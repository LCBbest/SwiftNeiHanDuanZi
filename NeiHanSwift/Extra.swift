//
//	Extra.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Extra{

	var hasMore : Bool!
	var maxTime : Int!
	var minTime : Int!
	var now : Int!
	var total : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		hasMore = dictionary["has_more"] as? Bool
		maxTime = dictionary["max_time"] as? Int
		minTime = dictionary["min_time"] as? Int
		now = dictionary["now"] as? Int
		total = dictionary["total"] as? Int
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if hasMore != nil{
			dictionary["has_more"] = hasMore
		}
		if maxTime != nil{
			dictionary["max_time"] = maxTime
		}
		if minTime != nil{
			dictionary["min_time"] = minTime
		}
		if now != nil{
			dictionary["now"] = now
		}
		if total != nil{
			dictionary["total"] = total
		}
		return dictionary
	}

}
