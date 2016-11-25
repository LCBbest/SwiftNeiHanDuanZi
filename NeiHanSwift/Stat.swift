//
//	Stat.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Stat{

	var dailyFanTicketCount : Int!
	var dailyIncome : Int!
	var diamondConsumedCount : Int!
	var diamondCount : Int!
	var followerCount : Int!
	var followingCount : Int!
	var id : Int!
	var idStr : String!
	var itemCount : Int!
	var recordCount : Int!
	var totalDuration : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		dailyFanTicketCount = dictionary["daily_fan_ticket_count"] as? Int
		dailyIncome = dictionary["daily_income"] as? Int
		diamondConsumedCount = dictionary["diamond_consumed_count"] as? Int
		diamondCount = dictionary["diamond_count"] as? Int
		followerCount = dictionary["follower_count"] as? Int
		followingCount = dictionary["following_count"] as? Int
		id = dictionary["id"] as? Int
		idStr = dictionary["id_str"] as? String
		itemCount = dictionary["item_count"] as? Int
		recordCount = dictionary["record_count"] as? Int
		totalDuration = dictionary["total_duration"] as? Int
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if dailyFanTicketCount != nil{
			dictionary["daily_fan_ticket_count"] = dailyFanTicketCount
		}
		if dailyIncome != nil{
			dictionary["daily_income"] = dailyIncome
		}
		if diamondConsumedCount != nil{
			dictionary["diamond_consumed_count"] = diamondConsumedCount
		}
		if diamondCount != nil{
			dictionary["diamond_count"] = diamondCount
		}
		if followerCount != nil{
			dictionary["follower_count"] = followerCount
		}
		if followingCount != nil{
			dictionary["following_count"] = followingCount
		}
		if id != nil{
			dictionary["id"] = id
		}
		if idStr != nil{
			dictionary["id_str"] = idStr
		}
		if itemCount != nil{
			dictionary["item_count"] = itemCount
		}
		if recordCount != nil{
			dictionary["record_count"] = recordCount
		}
		if totalDuration != nil{
			dictionary["total_duration"] = totalDuration
		}
		return dictionary
	}

}
