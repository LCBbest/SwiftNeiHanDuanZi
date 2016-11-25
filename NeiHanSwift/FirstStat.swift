//
//	FirstStat.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct FirstStat{

	var fanTicket : Int!
	var id : Double!
	var idStr : String!
	var money : Int!
	var totalUser : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		fanTicket = dictionary["fan_ticket"] as? Int
		id = dictionary["id"] as? Double
		idStr = dictionary["id_str"] as? String
		money = dictionary["money"] as? Int
		totalUser = dictionary["total_user"] as? Int
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if fanTicket != nil{
			dictionary["fan_ticket"] = fanTicket
		}
		if id != nil{
			dictionary["id"] = id
		}
		if idStr != nil{
			dictionary["id_str"] = idStr
		}
		if money != nil{
			dictionary["money"] = money
		}
		if totalUser != nil{
			dictionary["total_user"] = totalUser
		}
		return dictionary
	}

}
