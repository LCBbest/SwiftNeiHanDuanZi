//
//	VideoGroup.swift
//	模型生成器（小波汉化）JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation

struct VideoGroup{

	var activity : Activity!
	var allowDislike : Bool!
	var buryCount : Int!
	var categoryId : Int!
	var categoryName : String!
	var categoryType : Int!
	var categoryVisible : Bool!
	var chaoVideo : ChaoVideo!
	var commentCount : Int!
	var content : String!
	var coverImageUri : String!
	var coverImageUrl : String!
	var createTime : Int!
	var diggCount : Int!
	var dislikeReason : [DislikeReason]!
	var displayType : Int!
	var duration : Float!
	var favoriteCount : Int!
	var flashUrl : String!
	var gaoVideo : ChaoVideo!
	var goDetailCount : Int!
	var groupId : Int!
	var hasComments : Int!
	var hasHotComments : Int!
	var id : Int!
	var idStr : String!
	var isAnonymous : Bool!
	var isCanShare : Int!
	var isNeihanHot : Bool!
	var isPublicUrl : Int!
	var isVideo : Int!
	var keywords : String!
	var label : Int!
	var largeCover : LargeCover!
	var m3u8Url : String!
	var mediaType : Int!
	var mediumCover : LargeCover!
	var mp4Url : String!
	var neihanHotEndTime : String!
	var neihanHotLink : Activity!
	var neihanHotStartTime : String!
	var onlineTime : Int!
	var originVideo : ChaoVideo!
	var playCount : Int!
	var puVideo : ChaoVideo!
	var publishTime : String!
	var quickComment : Bool!
	var repinCount : Int!
	var shareCount : Int!
	var shareType : Int!
	var shareUrl : String!
	var status : Int!
	var statusDesc : String!
	var text : String!
	var title : String!
	var type : Int!
	var uri : String!
	var user : User!
	var userBury : Int!
	var userDigg : Int!
	var userFavorite : Int!
	var userRepin : Int!
	var videoHeight : Int!
	var videoWidth : Int!


	/**
	 * 用字典来初始化一个实例并设置各个属性值
	 */
	init(fromDictionary dictionary: NSDictionary){
		if let activityData = dictionary["activity"] as? NSDictionary{
				activity = Activity(fromDictionary: activityData)
			}
		allowDislike = dictionary["allow_dislike"] as? Bool
		buryCount = dictionary["bury_count"] as? Int
		categoryId = dictionary["category_id"] as? Int
		categoryName = dictionary["category_name"] as? String
		categoryType = dictionary["category_type"] as? Int
		categoryVisible = dictionary["category_visible"] as? Bool
		if let chaoVideoData = dictionary["chao_video"] as? NSDictionary{
				chaoVideo = ChaoVideo(fromDictionary: chaoVideoData)
			}
		commentCount = dictionary["comment_count"] as? Int
		content = dictionary["content"] as? String
		coverImageUri = dictionary["cover_image_uri"] as? String
		coverImageUrl = dictionary["cover_image_url"] as? String
		createTime = dictionary["create_time"] as? Int
		diggCount = dictionary["digg_count"] as? Int
		dislikeReason = [DislikeReason]()
		if let dislikeReasonArray = dictionary["dislike_reason"] as? [NSDictionary]{
			for dic in dislikeReasonArray{
				let value = DislikeReason(fromDictionary: dic)
				dislikeReason.append(value)
			}
		}
		displayType = dictionary["display_type"] as? Int
		duration = dictionary["duration"] as? Float
		favoriteCount = dictionary["favorite_count"] as? Int
		flashUrl = dictionary["flash_url"] as? String
		if let gaoVideoData = dictionary["gao_video"] as? NSDictionary{
				gaoVideo = ChaoVideo(fromDictionary: gaoVideoData)
			}
		goDetailCount = dictionary["go_detail_count"] as? Int
		groupId = dictionary["group_id"] as? Int
		hasComments = dictionary["has_comments"] as? Int
		hasHotComments = dictionary["has_hot_comments"] as? Int
		id = dictionary["id"] as? Int
		idStr = dictionary["id_str"] as? String
		isAnonymous = dictionary["is_anonymous"] as? Bool
		isCanShare = dictionary["is_can_share"] as? Int
		isNeihanHot = dictionary["is_neihan_hot"] as? Bool
		isPublicUrl = dictionary["is_public_url"] as? Int
		isVideo = dictionary["is_video"] as? Int
		keywords = dictionary["keywords"] as? String
		label = dictionary["label"] as? Int
		if let largeCoverData = dictionary["large_cover"] as? NSDictionary{
				largeCover = LargeCover(fromDictionary: largeCoverData)
			}
		m3u8Url = dictionary["m3u8_url"] as? String
		mediaType = dictionary["media_type"] as? Int
		if let mediumCoverData = dictionary["medium_cover"] as? NSDictionary{
				mediumCover = LargeCover(fromDictionary: mediumCoverData)
			}
		mp4Url = dictionary["mp4_url"] as? String
		neihanHotEndTime = dictionary["neihan_hot_end_time"] as? String
		if let neihanHotLinkData = dictionary["neihan_hot_link"] as? NSDictionary{
				neihanHotLink = Activity(fromDictionary: neihanHotLinkData)
			}
		neihanHotStartTime = dictionary["neihan_hot_start_time"] as? String
		onlineTime = dictionary["online_time"] as? Int
		if let originVideoData = dictionary["origin_video"] as? NSDictionary{
				originVideo = ChaoVideo(fromDictionary: originVideoData)
			}
		playCount = dictionary["play_count"] as? Int
		if let puVideoData = dictionary["pu_video"] as? NSDictionary{
				puVideo = ChaoVideo(fromDictionary: puVideoData)
			}
		publishTime = dictionary["publish_time"] as? String
		quickComment = dictionary["quick_comment"] as? Bool
		repinCount = dictionary["repin_count"] as? Int
		shareCount = dictionary["share_count"] as? Int
		shareType = dictionary["share_type"] as? Int
		shareUrl = dictionary["share_url"] as? String
		status = dictionary["status"] as? Int
		statusDesc = dictionary["status_desc"] as? String
		text = dictionary["text"] as? String
		title = dictionary["title"] as? String
		type = dictionary["type"] as? Int
		uri = dictionary["uri"] as? String
		if let userData = dictionary["user"] as? NSDictionary{
				user = User(fromDictionary: userData)
			}
		userBury = dictionary["user_bury"] as? Int
		userDigg = dictionary["user_digg"] as? Int
		userFavorite = dictionary["user_favorite"] as? Int
		userRepin = dictionary["user_repin"] as? Int
		videoHeight = dictionary["video_height"] as? Int
		videoWidth = dictionary["video_width"] as? Int
	}

	/**
	 * 把所有属性值存到一个NSDictionary对象，键是相应的属性名。
	 */
	func toDictionary() -> NSDictionary
	{
		let dictionary = NSMutableDictionary()
		if activity != nil{
			dictionary["activity"] = activity.toDictionary()
		}
		if allowDislike != nil{
			dictionary["allow_dislike"] = allowDislike
		}
		if buryCount != nil{
			dictionary["bury_count"] = buryCount
		}
		if categoryId != nil{
			dictionary["category_id"] = categoryId
		}
		if categoryName != nil{
			dictionary["category_name"] = categoryName
		}
		if categoryType != nil{
			dictionary["category_type"] = categoryType
		}
		if categoryVisible != nil{
			dictionary["category_visible"] = categoryVisible
		}
		if chaoVideo != nil{
			dictionary["chao_video"] = chaoVideo.toDictionary()
		}
		if commentCount != nil{
			dictionary["comment_count"] = commentCount
		}
		if content != nil{
			dictionary["content"] = content
		}
		if coverImageUri != nil{
			dictionary["cover_image_uri"] = coverImageUri
		}
		if coverImageUrl != nil{
			dictionary["cover_image_url"] = coverImageUrl
		}
		if createTime != nil{
			dictionary["create_time"] = createTime
		}
		if diggCount != nil{
			dictionary["digg_count"] = diggCount
		}
		if dislikeReason != nil{
			var dictionaryElements = [NSDictionary]()
			for dislikeReasonElement in dislikeReason {
				dictionaryElements.append(dislikeReasonElement.toDictionary())
			}
			dictionary["dislike_reason"] = dictionaryElements
		}
		if displayType != nil{
			dictionary["display_type"] = displayType
		}
		if duration != nil{
			dictionary["duration"] = duration
		}
		if favoriteCount != nil{
			dictionary["favorite_count"] = favoriteCount
		}
		if flashUrl != nil{
			dictionary["flash_url"] = flashUrl
		}
		if gaoVideo != nil{
			dictionary["gao_video"] = gaoVideo.toDictionary()
		}
		if goDetailCount != nil{
			dictionary["go_detail_count"] = goDetailCount
		}
		if groupId != nil{
			dictionary["group_id"] = groupId
		}
		if hasComments != nil{
			dictionary["has_comments"] = hasComments
		}
		if hasHotComments != nil{
			dictionary["has_hot_comments"] = hasHotComments
		}
		if id != nil{
			dictionary["id"] = id
		}
		if idStr != nil{
			dictionary["id_str"] = idStr
		}
		if isAnonymous != nil{
			dictionary["is_anonymous"] = isAnonymous
		}
		if isCanShare != nil{
			dictionary["is_can_share"] = isCanShare
		}
		if isNeihanHot != nil{
			dictionary["is_neihan_hot"] = isNeihanHot
		}
		if isPublicUrl != nil{
			dictionary["is_public_url"] = isPublicUrl
		}
		if isVideo != nil{
			dictionary["is_video"] = isVideo
		}
		if keywords != nil{
			dictionary["keywords"] = keywords
		}
		if label != nil{
			dictionary["label"] = label
		}
		if largeCover != nil{
			dictionary["large_cover"] = largeCover.toDictionary()
		}
		if m3u8Url != nil{
			dictionary["m3u8_url"] = m3u8Url
		}
		if mediaType != nil{
			dictionary["media_type"] = mediaType
		}
		if mediumCover != nil{
			dictionary["medium_cover"] = mediumCover.toDictionary()
		}
		if mp4Url != nil{
			dictionary["mp4_url"] = mp4Url
		}
		if neihanHotEndTime != nil{
			dictionary["neihan_hot_end_time"] = neihanHotEndTime
		}
		if neihanHotLink != nil{
			dictionary["neihan_hot_link"] = neihanHotLink.toDictionary()
		}
		if neihanHotStartTime != nil{
			dictionary["neihan_hot_start_time"] = neihanHotStartTime
		}
		if onlineTime != nil{
			dictionary["online_time"] = onlineTime
		}
		if originVideo != nil{
			dictionary["origin_video"] = originVideo.toDictionary()
		}
		if playCount != nil{
			dictionary["play_count"] = playCount
		}
		if puVideo != nil{
			dictionary["pu_video"] = puVideo.toDictionary()
		}
		if publishTime != nil{
			dictionary["publish_time"] = publishTime
		}
		if quickComment != nil{
			dictionary["quick_comment"] = quickComment
		}
		if repinCount != nil{
			dictionary["repin_count"] = repinCount
		}
		if shareCount != nil{
			dictionary["share_count"] = shareCount
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
		if statusDesc != nil{
			dictionary["status_desc"] = statusDesc
		}
		if text != nil{
			dictionary["text"] = text
		}
		if title != nil{
			dictionary["title"] = title
		}
		if type != nil{
			dictionary["type"] = type
		}
		if uri != nil{
			dictionary["uri"] = uri
		}
		if user != nil{
			dictionary["user"] = user.toDictionary()
		}
		if userBury != nil{
			dictionary["user_bury"] = userBury
		}
		if userDigg != nil{
			dictionary["user_digg"] = userDigg
		}
		if userFavorite != nil{
			dictionary["user_favorite"] = userFavorite
		}
		if userRepin != nil{
			dictionary["user_repin"] = userRepin
		}
		if videoHeight != nil{
			dictionary["video_height"] = videoHeight
		}
		if videoWidth != nil{
			dictionary["video_width"] = videoWidth
		}
		return dictionary
	}

}
