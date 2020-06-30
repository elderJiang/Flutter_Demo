import 'package:flutterappmmmm/generated/json/base/json_convert_content.dart';

class WebInfoEntity with JsonConvert<WebInfoEntity> {
	String name;
	int num;
	List<WebInfoSite> sites;
}

class WebInfoSite with JsonConvert<WebInfoSite> {
	String name;
	List<String> info;
}
