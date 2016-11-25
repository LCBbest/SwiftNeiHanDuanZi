//
//	VideoComment.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct VideoComment{

	var avatarUrl : String!
	var buryCount : Int!
	var createTime : Int!
	var descriptionField : String!
	var diggCount : Int!
	var groupId : Int!
	var id : Int!
	var isDigg : Int!
	var isProUser : Bool!
	var platform : String!
	var platformId : String!
	var shareType : Int!
	var shareUrl : String!
	var status : Int!
	var text : String!
	var userBury : Int!
	var userDigg : Int!
	var userId : Int!
	var userName : String!
	var userProfileImageUrl : String!
	var userProfileUrl : String!
	var userVerified : Bool!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		avatarUrl = dictionary["avatar_url"] as? String
		buryCount = dictionary["bury_count"] as? Int
		createTime = dictionary["create_time"] as? Int
		descriptionField = dictionary["description"] as? String
		diggCount = dictionary["digg_count"] as? Int
		groupId = dictionary["group_id"] as? Int
		id = dictionary["id"] as? Int
		isDigg = dictionary["is_digg"] as? Int
		isProUser = dictionary["is_pro_user"] as? Bool
		platform = dictionary["platform"] as? String
		platformId = dictionary["platform_id"] as? String
		shareType = dictionary["share_type"] as? Int
		shareUrl = dictionary["share_url"] as? String
		status = dictionary["status"] as? Int
		text = dictionary["text"] as? String
		userBury = dictionary["user_bury"] as? Int
		userDigg = dictionary["user_digg"] as? Int
		userId = dictionary["user_id"] as? Int
		userName = dictionary["user_name"] as? String
		userProfileImageUrl = dictionary["user_profile_image_url"] as? String
		userProfileUrl = dictionary["user_profile_url"] as? String
		userVerified = dictionary["user_verified"] as? Bool
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if avatarUrl != nil{
			dictionary["avatar_url"] = avatarUrl
		}
		if buryCount != nil{
			dictionary["bury_count"] = buryCount
		}
		if createTime != nil{
			dictionary["create_time"] = createTime
		}
		if descriptionField != nil{
			dictionary["description"] = descriptionField
		}
		if diggCount != nil{
			dictionary["digg_count"] = diggCount
		}
		if groupId != nil{
			dictionary["group_id"] = groupId
		}
		if id != nil{
			dictionary["id"] = id
		}
		if isDigg != nil{
			dictionary["is_digg"] = isDigg
		}
		if isProUser != nil{
			dictionary["is_pro_user"] = isProUser
		}
		if platform != nil{
			dictionary["platform"] = platform
		}
		if platformId != nil{
			dictionary["platform_id"] = platformId
		}
		if shareType != nil{
			dictionary["share_type"] = shareType
		}
		if shareUrl != nil{
			dictionary["share_url"] = shareUrl
		}
		if status != nil{
			dictionary["status"] = status
		}
		if text != nil{
			dictionary["text"] = text
		}
		if userBury != nil{
			dictionary["user_bury"] = userBury
		}
		if userDigg != nil{
			dictionary["user_digg"] = userDigg
		}
		if userId != nil{
			dictionary["user_id"] = userId
		}
		if userName != nil{
			dictionary["user_name"] = userName
		}
		if userProfileImageUrl != nil{
			dictionary["user_profile_image_url"] = userProfileImageUrl
		}
		if userProfileUrl != nil{
			dictionary["user_profile_url"] = userProfileUrl
		}
		if userVerified != nil{
			dictionary["user_verified"] = userVerified
		}
		return dictionary
	}

}
