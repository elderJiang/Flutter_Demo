// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutterappmmmm/pages/news_data_entity.dart';
import 'package:flutterappmmmm/generated/json/news_data_entity_helper.dart';

class JsonConvert<T> {
	T fromJson(Map<String, dynamic> json) {
		return _getFromJson<T>(runtimeType, this, json);
	}

  Map<String, dynamic> toJson() {
		return _getToJson<T>(runtimeType, this);
  }

  static _getFromJson<T>(Type type, data, json) {
    switch (type) {			case NewsDataEntity:
			return newsDataEntityFromJson(data as NewsDataEntity, json) as T;			case NewsDataT1348647853363:
			return newsDataT1348647853363FromJson(data as NewsDataT1348647853363, json) as T;			case NewsDataT1348647853363Ad:
			return newsDataT1348647853363AdFromJson(data as NewsDataT1348647853363Ad, json) as T;			case NewsDataT1348647853363VideoTopic:
			return newsDataT1348647853363VideoTopicFromJson(data as NewsDataT1348647853363VideoTopic, json) as T;			case NewsDataT1348647853363Videoinfo:
			return newsDataT1348647853363VideoinfoFromJson(data as NewsDataT1348647853363Videoinfo, json) as T;			case NewsDataT1348647853363VideoinfoVideoData:
			return newsDataT1348647853363VideoinfoVideoDataFromJson(data as NewsDataT1348647853363VideoinfoVideoData, json) as T;			case NewsDataT1348647853363VideoinfoVideoDataPlayInfo:
			return newsDataT1348647853363VideoinfoVideoDataPlayInfoFromJson(data as NewsDataT1348647853363VideoinfoVideoDataPlayInfo, json) as T;    }
    return data as T;
  }

  static _getToJson<T>(Type type, data) {
		switch (type) {			case NewsDataEntity:
			return newsDataEntityToJson(data as NewsDataEntity);			case NewsDataT1348647853363:
			return newsDataT1348647853363ToJson(data as NewsDataT1348647853363);			case NewsDataT1348647853363Ad:
			return newsDataT1348647853363AdToJson(data as NewsDataT1348647853363Ad);			case NewsDataT1348647853363VideoTopic:
			return newsDataT1348647853363VideoTopicToJson(data as NewsDataT1348647853363VideoTopic);			case NewsDataT1348647853363Videoinfo:
			return newsDataT1348647853363VideoinfoToJson(data as NewsDataT1348647853363Videoinfo);			case NewsDataT1348647853363VideoinfoVideoData:
			return newsDataT1348647853363VideoinfoVideoDataToJson(data as NewsDataT1348647853363VideoinfoVideoData);			case NewsDataT1348647853363VideoinfoVideoDataPlayInfo:
			return newsDataT1348647853363VideoinfoVideoDataPlayInfoToJson(data as NewsDataT1348647853363VideoinfoVideoDataPlayInfo);    }
    return data as T;
  }
  //Go back to a single instance by type
  static _fromJsonSingle(String type, json) {
    switch (type) {			case 'NewsDataEntity':
			return NewsDataEntity().fromJson(json);			case 'NewsDataT1348647853363':
			return NewsDataT1348647853363().fromJson(json);			case 'NewsDataT1348647853363Ad':
			return NewsDataT1348647853363Ad().fromJson(json);			case 'NewsDataT1348647853363VideoTopic':
			return NewsDataT1348647853363VideoTopic().fromJson(json);			case 'NewsDataT1348647853363Videoinfo':
			return NewsDataT1348647853363Videoinfo().fromJson(json);			case 'NewsDataT1348647853363VideoinfoVideoData':
			return NewsDataT1348647853363VideoinfoVideoData().fromJson(json);			case 'NewsDataT1348647853363VideoinfoVideoDataPlayInfo':
			return NewsDataT1348647853363VideoinfoVideoDataPlayInfo().fromJson(json);    }
    return null;
  }

  //empty list is returned by type
  static _getListFromType(String type) {
    switch (type) {			case 'NewsDataEntity':
			return List<NewsDataEntity>();			case 'NewsDataT1348647853363':
			return List<NewsDataT1348647853363>();			case 'NewsDataT1348647853363Ad':
			return List<NewsDataT1348647853363Ad>();			case 'NewsDataT1348647853363VideoTopic':
			return List<NewsDataT1348647853363VideoTopic>();			case 'NewsDataT1348647853363Videoinfo':
			return List<NewsDataT1348647853363Videoinfo>();			case 'NewsDataT1348647853363VideoinfoVideoData':
			return List<NewsDataT1348647853363VideoinfoVideoData>();			case 'NewsDataT1348647853363VideoinfoVideoDataPlayInfo':
			return List<NewsDataT1348647853363VideoinfoVideoDataPlayInfo>();    }
    return null;
  }

  static M fromJsonAsT<M>(json) {
    String type = M.toString();
    if (json is List && type.contains("List<")) {
      String itemType = type.substring(5, type.length - 1);
      List tempList = _getListFromType(itemType);
      json.forEach((itemJson) {
        tempList
            .add(_fromJsonSingle(type.substring(5, type.length - 1), itemJson));
      });
      return tempList as M;
    } else {
      return _fromJsonSingle(M.toString(), json) as M;
    }
  }
}