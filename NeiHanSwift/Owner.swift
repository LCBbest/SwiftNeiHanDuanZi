//
//	Owner.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct Owner{

	var avatarLarge : AvatarLarge!
	var avatarMedium : AvatarLarge!
	var avatarThumb : AvatarLarge!
	var birthday : Int!
	var birthdayDescription : String!
	var birthdayValid : Bool!
	var city : String!
	var constellation : String!
	var fanTicketCount : Int!
	var followStatus : Int!
	var gender : Int!
	var id : Int!
	var idStr : String!
	var level : Int!
	var nickname : String!
	var pushCommentStatus : Bool!
	var pushStatus : Bool!
	var shortId : Int!
	var signature : String!
	var stats : Stat!
	var verified : Bool!
	var verifiedReason : String!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		if let avatarLargeData = dictionary["avatar_large"] as? NSDictionary{
				avatarLarge = AvatarLarge(fromDictionary: avatarLargeData)
			}
		if let avatarMediumData = dictionary["avatar_medium"] as? NSDictionary{
				avatarMedium = AvatarLarge(fromDictionary: avatarMediumData)
			}
		if let avatarThumbData = dictionary["avatar_thumb"] as? NSDictionary{
				avatarThumb = AvatarLarge(fromDictionary: avatarThumbData)
			}
		birthday = dictionary["birthday"] as? Int
		birthdayDescription = dictionary["birthday_description"] as? String
		birthdayValid = dictionary["birthday_valid"] as? Bool
		city = dictionary["city"] as? String
		constellation = dictionary["constellation"] as? String
		fanTicketCount = dictionary["fan_ticket_count"] as? Int
		followStatus = dictionary["follow_status"] as? Int
		gender = dictionary["gender"] as? Int
		id = dictionary["id"] as? Int
		idStr = dictionary["id_str"] as? String
		level = dictionary["level"] as? Int
		nickname = dictionary["nickname"] as? String
		pushCommentStatus = dictionary["push_comment_status"] as? Bool
		pushStatus = dictionary["push_status"] as? Bool
		shortId = dictionary["short_id"] as? Int
		signature = dictionary["signature"] as? String
		if let statsData = dictionary["stats"] as? NSDictionary{
				stats = Stat(fromDictionary: statsData)
			}
		verified = dictionary["verified"] as? Bool
		verifiedReason = dictionary["verified_reason"] as? String
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if avatarLarge != nil{
			dictionary["avatar_large"] = avatarLarge.toDictionary()
		}
		if avatarMedium != nil{
			dictionary["avatar_medium"] = avatarMedium.toDictionary()
		}
		if avatarThumb != nil{
			dictionary["avatar_thumb"] = avatarThumb.toDictionary()
		}
		if birthday != nil{
			dictionary["birthday"] = birthday
		}
		if birthdayDescription != nil{
			dictionary["birthday_description"] = birthdayDescription
		}
		if birthdayValid != nil{
			dictionary["birthday_valid"] = birthdayValid
		}
		if city != nil{
			dictionary["city"] = city
		}
		if constellation != nil{
			dictionary["constellation"] = constellation
		}
		if fanTicketCount != nil{
			dictionary["fan_ticket_count"] = fanTicketCount
		}
		if followStatus != nil{
			dictionary["follow_status"] = followStatus
		}
		if gender != nil{
			dictionary["gender"] = gender
		}
		if id != nil{
			dictionary["id"] = id
		}
		if idStr != nil{
			dictionary["id_str"] = idStr
		}
		if level != nil{
			dictionary["level"] = level
		}
		if nickname != nil{
			dictionary["nickname"] = nickname
		}
		if pushCommentStatus != nil{
			dictionary["push_comment_status"] = pushCommentStatus
		}
		if pushStatus != nil{
			dictionary["push_status"] = pushStatus
		}
		if shortId != nil{
			dictionary["short_id"] = shortId
		}
		if signature != nil{
			dictionary["signature"] = signature
		}
		if stats != nil{
			dictionary["stats"] = stats.toDictionary()
		}
		if verified != nil{
			dictionary["verified"] = verified
		}
		if verifiedReason != nil{
			dictionary["verified_reason"] = verifiedReason
		}
		return dictionary
	}

}
