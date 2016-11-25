//
//	RootClass.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct RootClass{

	var livedata : [Livedata]!
	var extra : Extra!
	var statusCode : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		livedata = [Livedata]()
		if let livedataArray = dictionary["data"] as? [NSDictionary]{
			for dic in livedataArray{
				let value = Livedata(fromDictionary: dic)
				livedata.append(value)
			}
		}
		if let extraData = dictionary["extra"] as? NSDictionary{
				extra = Extra(fromDictionary: extraData)
			}
		statusCode = dictionary["status_code"] as? Int
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if livedata != nil{
			var dictionaryElements = [NSDictionary]()
			for livedataElement in livedata {
				dictionaryElements.append(livedataElement.toDictionary())
			}
			dictionary["Livedata"] = dictionaryElements
		}
		if extra != nil{
			dictionary["extra"] = extra.toDictionary()
		}
		if statusCode != nil{
			dictionary["status_code"] = statusCode
		}
		return dictionary
	}

}
