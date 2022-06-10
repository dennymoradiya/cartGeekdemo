import 'dart:convert';
import 'package:cartdemo/const/const.dart';
import 'package:cartdemo/view/home/model/bookindata_model.dart';
import 'package:http/http.dart' as http;

Future Getdata() async {
  final response = await http.get(
    Uri.parse(baseUrl),
    headers: {
      "Content-Type": "application/json",
    },
  );

  if (response.statusCode == 200) {
    print("data found");
    return jsonDecode(response.body);
  } else {
    print("data not found");
    return null;
  }
}
