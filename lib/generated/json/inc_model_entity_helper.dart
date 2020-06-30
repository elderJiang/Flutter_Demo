import 'package:flutterappmmmm/Models/inc_model_entity.dart';

incModelEntityFromJson(IncModelEntity data, Map<String, dynamic> json) {
	if (json['T1348648517839'] != null) {
		data.t1348648517839 = new List<IncModelT1348648517839>();
		(json['T1348648517839'] as List).forEach((v) {
			data.t1348648517839.add(new IncModelT1348648517839().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> incModelEntityToJson(IncModelEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.t1348648517839 != null) {
		data['T1348648517839'] =  entity.t1348648517839.map((v) => v.toJson()).toList();
	}
	return data;
}

incModelT1348648517839FromJson(IncModelT1348648517839 data, Map<String, dynamic> json) {
	if (json['imgextra'] != null) {
		data.imgextra = new List<IncModelT1348648517839Imgextra>();
		(json['imgextra'] as List).forEach((v) {
			data.imgextra.add(new IncModelT1348648517839Imgextra().fromJson(v));
		});
	}
	if (json['sourceId'] != null) {
		data.sourceId = json['sourceId']?.toString();
	}
	if (json['template'] != null) {
		data.template = json['template']?.toString();
	}
	if (json['skipID'] != null) {
		data.skipID = json['skipID']?.toString();
	}
	if (json['lmodify'] != null) {
		data.lmodify = json['lmodify']?.toString();
	}
	if (json['postid'] != null) {
		data.postid = json['postid']?.toString();
	}
	if (json['source'] != null) {
		data.source = json['source']?.toString();
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
	if (json['topic_background'] != null) {
		data.topicBackground = json['topic_background']?.toString();
	}
	if (json['digest'] != null) {
		data.digest = json['digest']?.toString();
	}
	if (json['photosetID'] != null) {
		data.photosetID = json['photosetID']?.toString();
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
	if (json['priority'] != null) {
		data.priority = json['priority']?.toInt();
	}
	if (json['quality'] != null) {
		data.quality = json['quality']?.toInt();
	}
	if (json['commentStatus'] != null) {
		data.commentStatus = json['commentStatus']?.toInt();
	}
	if (json['ads'] != null) {
		data.ads = new List<IncModelT1348648517839Ad>();
		(json['ads'] as List).forEach((v) {
			data.ads.add(new IncModelT1348648517839Ad().fromJson(v));
		});
	}
	if (json['ename'] != null) {
		data.ename = json['ename']?.toString();
	}
	if (json['replyCount'] != null) {
		data.replyCount = json['replyCount']?.toInt();
	}
	if (json['picinfo'] != null) {
		data.picinfo = new IncModelT1348648517839Picinfo().fromJson(json['picinfo']);
	}
	if (json['imgsum'] != null) {
		data.imgsum = json['imgsum']?.toInt();
	}
	if (json['hasIcon'] != null) {
		data.hasIcon = json['hasIcon'];
	}
	if (json['skipType'] != null) {
		data.skipType = json['skipType']?.toString();
	}
	if (json['category'] != null) {
		data.category = json['category']?.toString();
	}
	if (json['cid'] != null) {
		data.cid = json['cid']?.toString();
	}
	if (json['url_3w'] != null) {
		data.url3w = json['url_3w']?.toString();
	}
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	if (json['topicid'] != null) {
		data.topicid = json['topicid']?.toString();
	}
	if (json['ltitle'] != null) {
		data.ltitle = json['ltitle']?.toString();
	}
	if (json['subtitle'] != null) {
		data.subtitle = json['subtitle']?.toString();
	}
	return data;
}

Map<String, dynamic> incModelT1348648517839ToJson(IncModelT1348648517839 entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.imgextra != null) {
		data['imgextra'] =  entity.imgextra.map((v) => v.toJson()).toList();
	}
	data['sourceId'] = entity.sourceId;
	data['template'] = entity.template;
	data['skipID'] = entity.skipID;
	data['lmodify'] = entity.lmodify;
	data['postid'] = entity.postid;
	data['source'] = entity.source;
	data['title'] = entity.title;
	data['mtime'] = entity.mtime;
	data['hasImg'] = entity.hasImg;
	data['topic_background'] = entity.topicBackground;
	data['digest'] = entity.digest;
	data['photosetID'] = entity.photosetID;
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
	data['priority'] = entity.priority;
	data['quality'] = entity.quality;
	data['commentStatus'] = entity.commentStatus;
	if (entity.ads != null) {
		data['ads'] =  entity.ads.map((v) => v.toJson()).toList();
	}
	data['ename'] = entity.ename;
	data['replyCount'] = entity.replyCount;
	if (entity.picinfo != null) {
		data['picinfo'] = entity.picinfo.toJson();
	}
	data['imgsum'] = entity.imgsum;
	data['hasIcon'] = entity.hasIcon;
	data['skipType'] = entity.skipType;
	data['category'] = entity.category;
	data['cid'] = entity.cid;
	data['url_3w'] = entity.url3w;
	data['url'] = entity.url;
	data['topicid'] = entity.topicid;
	data['ltitle'] = entity.ltitle;
	data['subtitle'] = entity.subtitle;
	return data;
}

incModelT1348648517839ImgextraFromJson(IncModelT1348648517839Imgextra data, Map<String, dynamic> json) {
	if (json['imgsrc'] != null) {
		data.imgsrc = json['imgsrc']?.toString();
	}
	return data;
}

Map<String, dynamic> incModelT1348648517839ImgextraToJson(IncModelT1348648517839Imgextra entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['imgsrc'] = entity.imgsrc;
	return data;
}

incModelT1348648517839AdFromJson(IncModelT1348648517839Ad data, Map<String, dynamic> json) {
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

Map<String, dynamic> incModelT1348648517839AdToJson(IncModelT1348648517839Ad entity) {
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

incModelT1348648517839PicinfoFromJson(IncModelT1348648517839Picinfo data, Map<String, dynamic> json) {
	if (json['firstImage'] != null) {
		data.firstImage = json['firstImage']?.toString();
	}
	return data;
}

Map<String, dynamic> incModelT1348648517839PicinfoToJson(IncModelT1348648517839Picinfo entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['firstImage'] = entity.firstImage;
	return data;
}