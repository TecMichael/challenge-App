// import 'package:challenge/screens/news_model.dart';
// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:challenge/screens/tesla.dart';
import 'package:http/http.dart' as http;
// import 'top_headlines_model.dart';

class ApiCall {
  final String _nointernet = "No internet connection";
  final String _timeMsg = "Request timeout, connect to a better network";
  final String msg = "An error occured: ";
  static const String apiKey = "ab3ec5b4ac884ca7add858e28bde8012";
  String newsUrl =
      "https://newsapi.org/v2/everything?q=tesla&from=2021-10-04&sortBy=publishedAt&apiKey=$apiKey";

  Future<tesla> newsApi() async {
    try {
      final response = await http.get(Uri.parse(newsUrl),).timeout(
            const Duration(seconds: 60),
          );
      print(response.body);
      if (response.statusCode == 200) {
        var convert = json.decode(response.body);
        if (convert.toString().isNotEmpty && response.statusCode == 200) {
          tesla topHeadlines = tesla.fromJson(convert);

          return topHeadlines;
        }
        return tesla.fromJson(
          jsonDecode(response.body),
        );
      } else {
        return tesla(msg: response.reasonPhrase, status: "Failed");
      }
    } on SocketException catch (_) {
      return tesla(msg: _nointernet, status: "Failed");
    } on TimeoutException catch (_) {
      return tesla(msg: _timeMsg, status: "Failed");
    } catch (e) {
      return tesla(status: "Failed", msg: msg + '$e');
    }
  }
}
