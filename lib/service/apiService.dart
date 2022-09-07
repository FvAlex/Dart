import 'package:dio/dio.dart';
import 'package:apidart/modal/User.dart';

Future<String> getWord() async {
  try {
    var response =
        await Dio().get('https://random-word-api.herokuapp.com/word');
    print(response.data);
    return "Done";
  } catch (e) {
    print(e);
    return 'Error';
  }
}

Future<List<String>> getWords({required int number}) async {
  try {
    var response = await Dio().get('https://random-word-api.herokuapp.com/word',
        queryParameters: {"number": number});
    print(response.data);
    return List<String>.from(response.data);
  } catch (e) {
    print(e);
    return [];
  }
}

Future<int> getWordByLength(
    {required int numberWord, required int numberCara}) async {
  try {
    var response = await Dio().get('https://random-word-api.herokuapp.com/word',
        queryParameters: {'number': numberWord, 'length': numberCara});
    print(response.data);
    return 10;
  } catch (e) {
    print(e);
    return 1;
  }
}

Future<String> getWordByName({required String name}) async {
  try {
    var response = await Dio()
        .get('https://random-word-api.herokuapp.com/word/?lang=$name');
    print(response.data);
    return "Done";
  } catch (e) {
    print(e);
    return 'Error';
  }
}

Future<String> getAgeByName({required String name}) async {
  try {
    var response = await Dio().get('https://api.agify.io?name=$name');
    print(response.data);
    return "Done";
  } catch (e) {
    print(e);
    return 'Error';
  }
}

Future<String> getAgeByNameTable(
    {required String nameUn,
    required String nameDeux,
    required String nameTrois,
    required String nameQuatre}) async {
  try {
    var response = await Dio().get(
        'https://api.agify.io?name[]=$nameUn&name[]=$nameDeux&name[]=$nameTrois&name[]=$nameQuatre');
    print(response.data);
    return "Done";
  } catch (e) {
    print(e);
    return 'Error';
  }
}

Future<String> postData({required User user}) async {
  try {
    var response = await Dio().post('https://reqres.in/api/users', data: user);
    print(response.data);
    return "Done";
  } catch (e) {
    print(e);
    return e.toString();
  }
}
