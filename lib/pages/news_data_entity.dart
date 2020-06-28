import 'package:flutterappmmmm/generated/json/base/json_convert_content.dart';
import 'package:flutterappmmmm/generated/json/base/json_filed.dart';

class NewsDataEntity with JsonConvert<NewsDataEntity> {
	@JSONField(name: "T1348647853363")
	List<NewsDataT1348647853363> t1348647853363;
}

class NewsDataT1348647853363 with JsonConvert<NewsDataT1348647853363> {
	String sourceId;
	String template;
	String lmodify;
	String source;
	String postid;
	String title;
	String mtime;
	int hasImg;
	String topicid;
	@JSONField(name: "topic_background")
	String topicBackground;
	String digest;
	String boardid;
	String alias;
	int hasAD;
	String imgsrc;
	String ptime;
	String daynum;
	String extraShowFields;
	int hasHead;
	int order;
	int votecount;
	bool hasCover;
	String docid;
	String tname;
	@JSONField(name: "url_3w")
	String url3w;
	int priority;
	String url;
	int quality;
	int commentStatus;
	List<NewsDataT1348647853363Ad> ads;
	String ename;
	int replyCount;
	String ltitle;
	bool hasIcon;
	String subtitle;
	String cid;
	NewsDataT1348647853363VideoTopic videoTopic;
	String skipID;
	NewsDataT1348647853363Videoinfo videoinfo;
	int length;
	String videosource;
	String videoID;
	String skipType;
	String category;
	@JSONField(name: "TAGS")
	String tAGS;
}

class NewsDataT1348647853363Ad with JsonConvert<NewsDataT1348647853363Ad> {
	String subtitle;
	String skipType;
	String skipID;
	String tag;
	String title;
	String imgsrc;
	String url;
}

class NewsDataT1348647853363VideoTopic with JsonConvert<NewsDataT1348647853363VideoTopic> {
	String ename;
	String tname;
	String alias;
	@JSONField(name: "topic_icons")
	String topicIcons;
	String tid;
}

class NewsDataT1348647853363Videoinfo with JsonConvert<NewsDataT1348647853363Videoinfo> {
	double videoRatio;
	@JSONField(name: "video_data")
	NewsDataT1348647853363VideoinfoVideoData videoData;
	int length;
	String description;
	String videosource;
	String title;
	@JSONField(name: "mp4_url")
	String mp4Url;
	String vid;
	String cover;
	int playCount;
	int replyCount;
	String replyBoard;
	int playersize;
	String replyid;
	String sectiontitle;
	String ptime;
	@JSONField(name: "m3u8_url")
	String m3u8Url;
}

class NewsDataT1348647853363VideoinfoVideoData with JsonConvert<NewsDataT1348647853363VideoinfoVideoData> {
	int duration;
	@JSONField(name: "hevc_url")
	String hevcUrl;
	@JSONField(name: "hevc_size")
	int hevcSize;
	@JSONField(name: "sd_preload_size")
	int sdPreloadSize;
	@JSONField(name: "sd_url")
	String sdUrl;
	@JSONField(name: "play_info")
	List<NewsDataT1348647853363VideoinfoVideoDataPlayInfo> playInfo;
	@JSONField(name: "sd_size")
	int sdSize;
	@JSONField(name: "hevc_preload_size")
	int hevcPreloadSize;
	double ratio;
}

class NewsDataT1348647853363VideoinfoVideoDataPlayInfo with JsonConvert<NewsDataT1348647853363VideoinfoVideoDataPlayInfo> {
	@JSONField(name: "encode_format")
	String encodeFormat;
	int size;
	@JSONField(name: "quality_desc")
	String qualityDesc;
	String label;
	String url;
	@JSONField(name: "quality_index")
	int qualityIndex;
}
