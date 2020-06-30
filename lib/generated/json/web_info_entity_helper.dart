import 'package:flutterappmmmm/Models/web_info_entity.dart';

webInfoEntityFromJson(WebInfoEntity data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['num'] != null) {
		data.num = json['num']?.toInt();
	}
	if (json['sites'] != null) {
		data.sites = new List<WebInfoSite>();
		(json['sites'] as List).forEach((v) {
			data.sites.add(new WebInfoSite().fromJson(v));
		});
	}
	return data;
}

Map<String, dynamic> webInfoEntityToJson(WebInfoEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['num'] = entity.num;
	if (entity.sites != null) {
		data['sites'] =  entity.sites.map((v) => v.toJson()).toList();
	}
	return data;
}

webInfoSiteFromJson(WebInfoSite data, Map<String, dynamic> json) {
	if (json['name'] != null) {
		data.name = json['name']?.toString();
	}
	if (json['info'] != null) {
		data.info = json['info']?.map((v) => v?.toString())?.toList()?.cast<String>();
	}
	return data;
}

Map<String, dynamic> webInfoSiteToJson(WebInfoSite entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['name'] = entity.name;
	data['info'] = entity.info;
	return data;
}