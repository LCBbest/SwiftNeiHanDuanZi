//
//	StreamUrl.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct StreamUrl{

	var id : Double!
	var idStr : String!
	var provider : Int!
	var rtmpPullUrl : String!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		id = dictionary["id"] as? Double
		idStr = dictionary["id_str"] as? String
		provider = dictionary["provider"] as? Int
		rtmpPullUrl = dictionary["rtmp_pull_url"] as? String
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if id != nil{
			dictionary["id"] = id
		}
		if idStr != nil{
			dictionary["id_str"] = idStr
		}
		if provider != nil{
			dictionary["provider"] = provider
		}
		if rtmpPullUrl != nil{
			dictionary["rtmp_pull_url"] = rtmpPullUrl
		}
		return dictionary
	}

}
