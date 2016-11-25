//
//	Ad.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Ad{

	var abShowStyle : Int!
	var adId : Int!
	var alertText : String!
	var appleid : String!
	var avatarName : String!
	var avatarUrl : String!
	var buttonText : String!
	var displayImage : String!
	var displayImageHeight : Int!
	var displayImageWidth : Int!
	var displayInfo : String!
	var displayType : Int!
	var downloadUrl : String!
	var endTime : AnyObject!
	var gifUrl : String!
	var hideIfExists : Int!
	var id : Int!
	var ipaUrl : String!
	var isAd : Int!
	var label : String!
	var logExtra : LogExtra!
	var openUrl : String!
	var packageField : String!
	var source : String!
	var title : String!
	var trackUrl : String!
	var trackUrlList : [AnyObject]!
	var type : String!
	var webUrl : String!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		abShowStyle = dictionary["ab_show_style"] as? Int
		adId = dictionary["ad_id"] as? Int
		alertText = dictionary["alert_text"] as? String
		appleid = dictionary["appleid"] as? String
		avatarName = dictionary["avatar_name"] as? String
		avatarUrl = dictionary["avatar_url"] as? String
		buttonText = dictionary["button_text"] as? String
		displayImage = dictionary["display_image"] as? String
		displayImageHeight = dictionary["display_image_height"] as? Int
		displayImageWidth = dictionary["display_image_width"] as? Int
		displayInfo = dictionary["display_info"] as? String
		displayType = dictionary["display_type"] as? Int
		downloadUrl = dictionary["download_url"] as? String
		endTime = dictionary["end_time"] as? AnyObject
		gifUrl = dictionary["gif_url"] as? String
		hideIfExists = dictionary["hide_if_exists"] as? Int
		id = dictionary["id"] as? Int
		ipaUrl = dictionary["ipa_url"] as? String
		isAd = dictionary["is_ad"] as? Int
		label = dictionary["label"] as? String
		if let logExtraData = dictionary["log_extra"] as? NSDictionary{
				logExtra = LogExtra(fromDictionary: logExtraData)
			}
		openUrl = dictionary["open_url"] as? String
		packageField = dictionary["package"] as? String
		source = dictionary["source"] as? String
		title = dictionary["title"] as? String
		trackUrl = dictionary["track_url"] as? String
		trackUrlList = dictionary["track_url_list"] as? [AnyObject]
		type = dictionary["type"] as? String
		webUrl = dictionary["web_url"] as? String
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if abShowStyle != nil{
			dictionary["ab_show_style"] = abShowStyle
		}
		if adId != nil{
			dictionary["ad_id"] = adId
		}
		if alertText != nil{
			dictionary["alert_text"] = alertText
		}
		if appleid != nil{
			dictionary["appleid"] = appleid
		}
		if avatarName != nil{
			dictionary["avatar_name"] = avatarName
		}
		if avatarUrl != nil{
			dictionary["avatar_url"] = avatarUrl
		}
		if buttonText != nil{
			dictionary["button_text"] = buttonText
		}
		if displayImage != nil{
			dictionary["display_image"] = displayImage
		}
		if displayImageHeight != nil{
			dictionary["display_image_height"] = displayImageHeight
		}
		if displayImageWidth != nil{
			dictionary["display_image_width"] = displayImageWidth
		}
		if displayInfo != nil{
			dictionary["display_info"] = displayInfo
		}
		if displayType != nil{
			dictionary["display_type"] = displayType
		}
		if downloadUrl != nil{
			dictionary["download_url"] = downloadUrl
		}
		if endTime != nil{
			dictionary["end_time"] = endTime
		}
		if gifUrl != nil{
			dictionary["gif_url"] = gifUrl
		}
		if hideIfExists != nil{
			dictionary["hide_if_exists"] = hideIfExists
		}
		if id != nil{
			dictionary["id"] = id
		}
		if ipaUrl != nil{
			dictionary["ipa_url"] = ipaUrl
		}
		if isAd != nil{
			dictionary["is_ad"] = isAd
		}
		if label != nil{
			dictionary["label"] = label
		}
		if logExtra != nil{
			dictionary["log_extra"] = logExtra.toDictionary()
		}
		if openUrl != nil{
			dictionary["open_url"] = openUrl
		}
		if packageField != nil{
			dictionary["package"] = packageField
		}
		if source != nil{
			dictionary["source"] = source
		}
		if title != nil{
			dictionary["title"] = title
		}
		if trackUrl != nil{
			dictionary["track_url"] = trackUrl
		}
		if trackUrlList != nil{
			dictionary["track_url_list"] = trackUrlList
		}
		if type != nil{
			dictionary["type"] = type
		}
		if webUrl != nil{
			dictionary["web_url"] = webUrl
		}
		return dictionary
	}

}
