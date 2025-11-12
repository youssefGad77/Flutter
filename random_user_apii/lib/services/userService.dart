import 'package:dio/dio.dart';
import 'package:random_user_apii/models/userModel.dart';

class userService {
 static final Dio dio = Dio();
 static Future fetchRandomUser() async {
    try {
      Response response = await dio.get("https://randomuser.me/api/?results=10");
      return userModel.fromJson(response.data);
    } on DioException catch (e) {
      throw Exception(e);
    }
  }
}
