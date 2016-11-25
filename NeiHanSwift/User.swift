//
//	User.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct User{

	var avatarUrl : String!
	var followers : Int!
	var followings : Int!
	var isFollowing : Bool!
	var isProUser : Bool!
	var name : String!
	var ugcCount : Int!
	var userId : Int!
	var userVerified : Bool!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		avatarUrl = dictionary["avatar_url"] as? String
		followers = dictionary["followers"] as? Int
		followings = dictionary["followings"] as? Int
		isFollowing = dictionary["is_following"] as? Bool
		isProUser = dictionary["is_pro_user"] as? Bool
		name = dictionary["name"] as? String
		ugcCount = dictionary["ugc_count"] as? Int
		userId = dictionary["user_id"] as? Int
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
		if followers != nil{
			dictionary["followers"] = followers
		}
		if followings != nil{
			dictionary["followings"] = followings
		}
		if isFollowing != nil{
			dictionary["is_following"] = isFollowing
		}
		if isProUser != nil{
			dictionary["is_pro_user"] = isProUser
		}
		if name != nil{
			dictionary["name"] = name
		}
		if ugcCount != nil{
			dictionary["ugc_count"] = ugcCount
		}
		if userId != nil{
			dictionary["user_id"] = userId
		}
		if userVerified != nil{
			dictionary["user_verified"] = userVerified
		}
		return dictionary
	}

}
