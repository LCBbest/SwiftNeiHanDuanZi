//
//	AvatarLarge.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct AvatarLarge{

	var uri : String!
	var urlList : [String]!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		uri = dictionary["uri"] as? String
		urlList = dictionary["url_list"] as? [String]
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if uri != nil{
			dictionary["uri"] = uri
		}
		if urlList != nil{
			dictionary["url_list"] = urlList
		}
		return dictionary
	}

}
