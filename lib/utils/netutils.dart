import 'dart:async';
import 'package:http/http.dart' as http;

class NetUtils {

    static Future<String> get(String url, {Map<String, String> params}) async {

      params["limit"]= 10.toString();
      if (params != null && params.isNotEmpty){

        StringBuffer sb = new StringBuffer("?");
        params.forEach((key, value){
            sb.write("$key"+"="+"$value"+"&");
        });

        String paramsStr = sb.toString();
        paramsStr = paramsStr.substring(0, paramsStr.length-1);
        url += paramsStr;
      }
      print(url);
      http.Response res = await http.get(url);

      return res.body;
    }

    static Future<String> post(String url, {Map<String, String> params})async{
       http.Response res = await http.post(url, body: params);
       return res.body;
    }
}