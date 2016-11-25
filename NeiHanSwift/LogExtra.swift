//
//	LogExtra.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct LogExtra{

	var adPrice : String!
	var convertId : Int!
	var reqId : String!
	var rit : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		adPrice = dictionary["ad_price"] as? String
		convertId = dictionary["convert_id"] as? Int
		reqId = dictionary["req_id"] as? String
		rit = dictionary["rit"] as? Int
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if adPrice != nil{
			dictionary["ad_price"] = adPrice
		}
		if convertId != nil{
			dictionary["convert_id"] = convertId
		}
		if reqId != nil{
			dictionary["req_id"] = reqId
		}
		if rit != nil{
			dictionary["rit"] = rit
		}
		return dictionary
	}

}
