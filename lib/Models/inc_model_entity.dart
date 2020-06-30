import 'package:flutterappmmmm/generated/json/base/json_convert_content.dart';
import 'package:flutterappmmmm/generated/json/base/json_filed.dart';

class IncModelEntity with JsonConvert<IncModelEntity> {
	@JSONField(name: "T1348648517839")
	List<IncModelT1348648517839> t1348648517839;
}

class IncModelT1348648517839 with JsonConvert<IncModelT1348648517839> {
	List<IncModelT1348648517839Imgextra> imgextra;
	String sourceId;
	String template;
	String skipID;
	String lmodify;
	String postid;
	String source;
	String title;
	String mtime;
	int hasImg;
	@JSONField(name: "topic_background")
	String topicBackground;
	String digest;
	String photosetID;
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
	int priority;
	int quality;
	int commentStatus;
	List<IncModelT1348648517839Ad> ads;
	String ename;
	int replyCount;
	IncModelT1348648517839Picinfo picinfo;
	int imgsum;
	bool hasIcon;
	String skipType;
	String category;
	String cid;
	@JSONField(name: "url_3w")
	String url3w;
	String url;
	String topicid;
	String ltitle;
	String subtitle;
}

class IncModelT1348648517839Imgextra with JsonConvert<IncModelT1348648517839Imgextra> {
	String imgsrc;
}

class IncModelT1348648517839Ad with JsonConvert<IncModelT1348648517839Ad> {
	String subtitle;
	String skipType;
	String skipID;
	String tag;
	String title;
	String imgsrc;
	String url;
}

class IncModelT1348648517839Picinfo with JsonConvert<IncModelT1348648517839Picinfo> {
	String firstImage;
}
