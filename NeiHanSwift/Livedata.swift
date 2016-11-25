//
//	Livedata.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Livedata{

	var rid : String!
	var seconddata : Seconddata!
	var tags : [AnyObject]!
	var type : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		rid = dictionary["rid"] as? String
		if let seconddataData = dictionary["data"] as? NSDictionary{
				seconddata = Seconddata(fromDictionary: seconddataData)
			}
		tags = dictionary["tags"] as? [AnyObject]
		type = dictionary["type"] as? Int
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if rid != nil{
			dictionary["rid"] = rid
		}
		if seconddata != nil{
			dictionary["seconddata"] = seconddata.toDictionary()
		}
		if tags != nil{
			dictionary["tags"] = tags
		}
		if type != nil{
			dictionary["type"] = type
		}
		return dictionary
	}

}
