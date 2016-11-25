//
//	ChaoVideo.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct ChaoVideo{

	var height : Int!
	var uri : String!
	var urlList : [UrlList]!
	var width : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		height = dictionary["height"] as? Int
		uri = dictionary["uri"] as? String
		urlList = [UrlList]()
		if let urlListArray = dictionary["url_list"] as? [NSDictionary]{
			for dic in urlListArray{
				let value = UrlList(fromDictionary: dic)
				urlList.append(value)
			}
		}
		width = dictionary["width"] as? Int
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if height != nil{
			dictionary["height"] = height
		}
		if uri != nil{
			dictionary["uri"] = uri
		}
		if urlList != nil{
			var dictionaryElements = [NSDictionary]()
			for urlListElement in urlList {
				dictionaryElements.append(urlListElement.toDictionary())
			}
			dictionary["url_list"] = dictionaryElements
		}
		if width != nil{
			dictionary["width"] = width
		}
		return dictionary
	}

}
