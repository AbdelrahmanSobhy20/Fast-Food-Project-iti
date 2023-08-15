import 'package:dio/dio.dart';
import 'model/storiesModel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiProvider {

  SuccessStories? successStories ;

  Future<SuccessStories?> getStories()async{
    try{
      var response = await Dio().get("http://159.89.4.181:2000/api/v1/success-stories");
      successStories = SuccessStories.fromJson(response.data);
      print(successStories?.statusCode);
      return successStories;

    } catch(e){
      print(e);
    }
    return null;
  }

  loginUser({required String email, required String password}) async {
    try {
      FormData formData = FormData.fromMap({
        "email": email,
        "password": password,});
      Response response =
      await Dio().post(
          "http://159.89.4.181:2000/api/v1/auth/email/signin", data: formData);
      print(response.data);
      //print(response.data[ "model"] ["tokens"] ["accessToken" ]);
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('tokenUser', response.data["model" ] ["tokens" ]["accessToken"]);
      final String? token = prefs.getString('tokenUser');
      print("********");
      print(token);
    } catch (e) {
      if (e is DioException) {
        print(e.response?.data);
      }
    }
  }
}
