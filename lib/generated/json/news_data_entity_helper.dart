import 'package:flutterappmmmm/pages/news_data_entity.dart';

newsDataEntityFromJson(NewsDataEntity data, Map<String, dynamic> json) {
	if (json['T1348647853363'] != null) {
		data.t1348647853363 = new List<NewsDataT1348647853363>();
		(json['T1348647853363'] as List).forEach((v) {
			data.t1348647853363.add(new NewsDataT1348647853363().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> newsDataEntityToJson(NewsDataEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.t1348647853363 != null) {
		data['T1348647853363'] =  entity.t1348647853363.map((v) => v.toJson()).toList();
	}
	return data;
}

newsDataT1348647853363FromJson(NewsDataT1348647853363 data, Map<String, dynamic> json) {
	if (json['sourceId'] != null) {
		data.sourceId = json['sourceId']?.toString();
	}
	if (json['template'] != null) {
		data.template = json['template']?.toString();
	}
	if (json['lmodify'] != null) {
		data.lmodify = json['lmodify']?.toString();
	}
	if (json['source'] != null) {
		data.source = json['source']?.toString();
	}
	if (json['postid'] != null) {
		data.postid = json['postid']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['mtime'] != null) {
		data.mtime = json['mtime']?.toString();
	}
	if (json['hasImg'] != null) {
		data.hasImg = json['hasImg']?.toInt();
	}
	if (json['topicid'] != null) {
		data.topicid = json['topicid']?.toString();
	}
	if (json['topic_background'] != null) {
		data.topicBackground = json['topic_background']?.toString();
	}
	if (json['digest'] != null) {
		data.digest = json['digest']?.toString();
	}
	if (json['boardid'] != null) {
		data.boardid = json['boardid']?.toString();
	}
	if (json['alias'] != null) {
		data.alias = json['alias']?.toString();
	}
	if (json['hasAD'] != null) {
		data.hasAD = json['hasAD']?.toInt();
	}
	if (json['imgsrc'] != null) {
		data.imgsrc = json['imgsrc']?.toString();
	}
	if (json['ptime'] != null) {
		data.ptime = json['ptime']?.toString();
	}
	if (json['daynum'] != null) {
		data.daynum = json['daynum']?.toString();
	}
	if (json['extraShowFields'] != null) {
		data.extraShowFields = json['extraShowFields']?.toString();
	}
	if (json['hasHead'] != null) {
		data.hasHead = json['hasHead']?.toInt();
	}
	if (json['order'] != null) {
		data.order = json['order']?.toInt();
	}
	if (json['votecount'] != null) {
		data.votecount = json['votecount']?.toInt();
	}
	if (json['hasCover'] != null) {
		data.hasCover = json['hasCover'];
	}
	if (json['docid'] != null) {
		data.docid = json['docid']?.toString();
	}
	if (json['tname'] != null) {
		data.tname = json['tname']?.toString();
	}
	if (json['url_3w'] != null) {
		data.url3w = json['url_3w']?.toString();
	}
	if (json['priority'] != null) {
		data.priority = json['priority']?.toInt();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['quality'] != null) {
		data.quality = json['quality']?.toInt();
	}
	if (json['commentStatus'] != null) {
		data.commentStatus = json['commentStatus']?.toInt();
	}
	if (json['ads'] != null) {
		data.ads = new List<NewsDataT1348647853363Ad>();
		(json['ads'] as List).forEach((v) {
			data.ads.add(new NewsDataT1348647853363Ad().fromJson(v));
		});
	}
	if (json['ename'] != null) {
		data.ename = json['ename']?.toString();
	}
	if (json['replyCount'] != null) {
		data.replyCount = json['replyCount']?.toInt();
	}
	if (json['ltitle'] != null) {
		data.ltitle = json['ltitle']?.toString();
	}
	if (json['hasIcon'] != null) {
		data.hasIcon = json['hasIcon'];
	}
	if (json['subtitle'] != null) {
		data.subtitle = json['subtitle']?.toString();
	}
	if (json['cid'] != null) {
		data.cid = json['cid']?.toString();
	}
	if (json['videoTopic'] != null) {
		data.videoTopic = new NewsDataT1348647853363VideoTopic().fromJson(json['videoTopic']);
	}
	if (json['skipID'] != null) {
		data.skipID = json['skipID']?.toString();
	}
	if (json['videoinfo'] != null) {
		data.videoinfo = new NewsDataT1348647853363Videoinfo().fromJson(json['videoinfo']);
	}
	if (json['length'] != null) {
		data.length = json['length']?.toInt();
	}
	if (json['videosource'] != null) {
		data.videosource = json['videosource']?.toString();
	}
	if (json['videoID'] != null) {
		data.videoID = json['videoID']?.toString();
	}
	if (json['skipType'] != null) {
		data.skipType = json['skipType']?.toString();
	}
	if (json['category'] != null) {
		data.category = json['category']?.toString();
	}
	if (json['TAGS'] != null) {
		data.tAGS = json['TAGS']?.toString();
	}
	return data;
}

Map<String, dynamic> newsDataT1348647853363ToJson(NewsDataT1348647853363 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['sourceId'] = entity.sourceId;
	data['template'] = entity.template;
	data['lmodify'] = entity.lmodify;
	data['source'] = entity.source;
	data['postid'] = entity.postid;
	data['title'] = entity.title;
	data['mtime'] = entity.mtime;
	data['hasImg'] = entity.hasImg;
	data['topicid'] = entity.topicid;
	data['topic_background'] = entity.topicBackground;
	data['digest'] = entity.digest;
	data['boardid'] = entity.boardid;
	data['alias'] = entity.alias;
	data['hasAD'] = entity.hasAD;
	data['imgsrc'] = entity.imgsrc;
	data['ptime'] = entity.ptime;
	data['daynum'] = entity.daynum;
	data['extraShowFields'] = entity.extraShowFields;
	data['hasHead'] = entity.hasHead;
	data['order'] = entity.order;
	data['votecount'] = entity.votecount;
	data['hasCover'] = entity.hasCover;
	data['docid'] = entity.docid;
	data['tname'] = entity.tname;
	data['url_3w'] = entity.url3w;
	data['priority'] = entity.priority;
	data['url'] = entity.url;
	data['quality'] = entity.quality;
	data['commentStatus'] = entity.commentStatus;
	if (entity.ads != null) {
		data['ads'] =  entity.ads.map((v) => v.toJson()).toList();
	}
	data['ename'] = entity.ename;
	data['replyCount'] = entity.replyCount;
	data['ltitle'] = entity.ltitle;
	data['hasIcon'] = entity.hasIcon;
	data['subtitle'] = entity.subtitle;
	data['cid'] = entity.cid;
	if (entity.videoTopic != null) {
		data['videoTopic'] = entity.videoTopic.toJson();
	}
	data['skipID'] = entity.skipID;
	if (entity.videoinfo != null) {
		data['videoinfo'] = entity.videoinfo.toJson();
	}
	data['length'] = entity.length;
	data['videosource'] = entity.videosource;
	data['videoID'] = entity.videoID;
	data['skipType'] = entity.skipType;
	data['category'] = entity.category;
	data['TAGS'] = entity.tAGS;
	return data;
}

newsDataT1348647853363AdFromJson(NewsDataT1348647853363Ad data, Map<String, dynamic> json) {
	if (json['subtitle'] != null) {
		data.subtitle = json['subtitle']?.toString();
	}
	if (json['skipType'] != null) {
		data.skipType = json['skipType']?.toString();
	}
	if (json['skipID'] != null) {
		data.skipID = json['skipID']?.toString();
	}
	if (json['tag'] != null) {
		data.tag = json['tag']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['imgsrc'] != null) {
		data.imgsrc = json['imgsrc']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	return data;
}

Map<String, dynamic> newsDataT1348647853363AdToJson(NewsDataT1348647853363Ad entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['subtitle'] = entity.subtitle;
	data['skipType'] = entity.skipType;
	data['skipID'] = entity.skipID;
	data['tag'] = entity.tag;
	data['title'] = entity.title;
	data['imgsrc'] = entity.imgsrc;
	data['url'] = entity.url;
	return data;
}

newsDataT1348647853363VideoTopicFromJson(NewsDataT1348647853363VideoTopic data, Map<String, dynamic> json) {
	if (json['ename'] != null) {
		data.ename = json['ename']?.toString();
	}
	if (json['tname'] != null) {
		data.tname = json['tname']?.toString();
	}
	if (json['alias'] != null) {
		data.alias = json['alias']?.toString();
	}
	if (json['topic_icons'] != null) {
		data.topicIcons = json['topic_icons']?.toString();
	}
	if (json['tid'] != null) {
		data.tid = json['tid']?.toString();
	}
	return data;
}

Map<String, dynamic> newsDataT1348647853363VideoTopicToJson(NewsDataT1348647853363VideoTopic entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['ename'] = entity.ename;
	data['tname'] = entity.tname;
	data['alias'] = entity.alias;
	data['topic_icons'] = entity.topicIcons;
	data['tid'] = entity.tid;
	return data;
}

newsDataT1348647853363VideoinfoFromJson(NewsDataT1348647853363Videoinfo data, Map<String, dynamic> json) {
	if (json['videoRatio'] != null) {
		data.videoRatio = json['videoRatio']?.toDouble();
	}
	if (json['video_data'] != null) {
		data.videoData = new NewsDataT1348647853363VideoinfoVideoData().fromJson(json['video_data']);
	}
	if (json['length'] != null) {
		data.length = json['length']?.toInt();
	}
	if (json['description'] != null) {
		data.description = json['description']?.toString();
	}
	if (json['videosource'] != null) {
		data.videosource = json['videosource']?.toString();
	}
	if (json['title'] != null) {
		data.title = json['title']?.toString();
	}
	if (json['mp4_url'] != null) {
		data.mp4Url = json['mp4_url']?.toString();
	}
	if (json['vid'] != null) {
		data.vid = json['vid']?.toString();
	}
	if (json['cover'] != null) {
		data.cover = json['cover']?.toString();
	}
	if (json['playCount'] != null) {
		data.playCount = json['playCount']?.toInt();
	}
	if (json['replyCount'] != null) {
		data.replyCount = json['replyCount']?.toInt();
	}
	if (json['replyBoard'] != null) {
		data.replyBoard = json['replyBoard']?.toString();
	}
	if (json['playersize'] != null) {
		data.playersize = json['playersize']?.toInt();
	}
	if (json['replyid'] != null) {
		data.replyid = json['replyid']?.toString();
	}
	if (json['sectiontitle'] != null) {
		data.sectiontitle = json['sectiontitle']?.toString();
	}
	if (json['ptime'] != null) {
		data.ptime = json['ptime']?.toString();
	}
	if (json['m3u8_url'] != null) {
		data.m3u8Url = json['m3u8_url']?.toString();
	}
	return data;
}

Map<String, dynamic> newsDataT1348647853363VideoinfoToJson(NewsDataT1348647853363Videoinfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['videoRatio'] = entity.videoRatio;
	if (entity.videoData != null) {
		data['video_data'] = entity.videoData.toJson();
	}
	data['length'] = entity.length;
	data['description'] = entity.description;
	data['videosource'] = entity.videosource;
	data['title'] = entity.title;
	data['mp4_url'] = entity.mp4Url;
	data['vid'] = entity.vid;
	data['cover'] = entity.cover;
	data['playCount'] = entity.playCount;
	data['replyCount'] = entity.replyCount;
	data['replyBoard'] = entity.replyBoard;
	data['playersize'] = entity.playersize;
	data['replyid'] = entity.replyid;
	data['sectiontitle'] = entity.sectiontitle;
	data['ptime'] = entity.ptime;
	data['m3u8_url'] = entity.m3u8Url;
	return data;
}

newsDataT1348647853363VideoinfoVideoDataFromJson(NewsDataT1348647853363VideoinfoVideoData data, Map<String, dynamic> json) {
	if (json['duration'] != null) {
		data.duration = json['duration']?.toInt();
	}
	if (json['hevc_url'] != null) {
		data.hevcUrl = json['hevc_url']?.toString();
	}
	if (json['hevc_size'] != null) {
		data.hevcSize = json['hevc_size']?.toInt();
	}
	if (json['sd_preload_size'] != null) {
		data.sdPreloadSize = json['sd_preload_size']?.toInt();
	}
	if (json['sd_url'] != null) {
		data.sdUrl = json['sd_url']?.toString();
	}
	if (json['play_info'] != null) {
		data.playInfo = new List<NewsDataT1348647853363VideoinfoVideoDataPlayInfo>();
		(json['play_info'] as List).forEach((v) {
			data.playInfo.add(new NewsDataT1348647853363VideoinfoVideoDataPlayInfo().fromJson(v));
		});
	}
	if (json['sd_size'] != null) {
		data.sdSize = json['sd_size']?.toInt();
	}
	if (json['hevc_preload_size'] != null) {
		data.hevcPreloadSize = json['hevc_preload_size']?.toInt();
	}
	if (json['ratio'] != null) {
		data.ratio = json['ratio']?.toDouble();
	}
	return data;
}

Map<String, dynamic> newsDataT1348647853363VideoinfoVideoDataToJson(NewsDataT1348647853363VideoinfoVideoData entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['duration'] = entity.duration;
	data['hevc_url'] = entity.hevcUrl;
	data['hevc_size'] = entity.hevcSize;
	data['sd_preload_size'] = entity.sdPreloadSize;
	data['sd_url'] = entity.sdUrl;
	if (entity.playInfo != null) {
		data['play_info'] =  entity.playInfo.map((v) => v.toJson()).toList();
	}
	data['sd_size'] = entity.sdSize;
	data['hevc_preload_size'] = entity.hevcPreloadSize;
	data['ratio'] = entity.ratio;
	return data;
}

newsDataT1348647853363VideoinfoVideoDataPlayInfoFromJson(NewsDataT1348647853363VideoinfoVideoDataPlayInfo data, Map<String, dynamic> json) {
	if (json['encode_format'] != null) {
		data.encodeFormat = json['encode_format']?.toString();
	}
	if (json['size'] != null) {
		data.size = json['size']?.toInt();
	}
	if (json['quality_desc'] != null) {
		data.qualityDesc = json['quality_desc']?.toString();
	}
	if (json['label'] != null) {
		data.label = json['label']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['quality_index'] != null) {
		data.qualityIndex = json['quality_index']?.toInt();
	}
	return data;
}

Map<String, dynamic> newsDataT1348647853363VideoinfoVideoDataPlayInfoToJson(NewsDataT1348647853363VideoinfoVideoDataPlayInfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['encode_format'] = entity.encodeFormat;
	data['size'] = entity.size;
	data['quality_desc'] = entity.qualityDesc;
	data['label'] = entity.label;
	data['url'] = entity.url;
	data['quality_index'] = entity.qualityIndex;
	return data;
}