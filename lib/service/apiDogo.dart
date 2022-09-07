import 'package:dio/dio.dart';
import 'package:apidart/modal/Dog.dart';

Future<void> getDogo() async {
  try {
    var response = await Dio().get('https://dog.ceo/api/breeds/image/random');
    Dog dogoApi = Dog.fromJson(response.data);
    print(dogoApi.message);
  } catch (e) {
    print(e);
  }
}

Future<void> getDogoByName({required String name}) async {
  try {
    var response =
        await Dio().get('https://dog.ceo/api/breed/$name/images/random');
    print(response.data);
  } catch (e) {
    print(e);
  }
}
