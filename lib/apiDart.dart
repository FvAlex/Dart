import 'package:apidart/modal/Dog.dart';
import 'package:apidart/modal/User.dart';
import 'package:apidart/service/apiDogo.dart';
import 'package:apidart/modal/Word.dart';

import 'package:apidart/service/apiService.dart';

Future<void> main(List<String> args) async {
  // print("getDogo");
  // await getDogo();

  // print("getDogoByName");
  // await getDogoByName(name: "african");

  // print("getWords");
  // await getWords(number: 2);

  // print("getWordByName");
  // await getWordByName(name: "es");

  // print("getWordByLength");
  // await getWordByLength(numberWord: 10, numberCara: 4);

  // print("getAgeByName");
  // await getAgeByName(name: "alexandre");

  // print("getAgeByNameTable");
  // await getAgeByNameTable(
  //     nameUn: "Alexandre",
  //     nameDeux: "Marina",
  //     nameTrois: "Enzo",
  //     nameQuatre: "Adrien");

  print("postData");
  User user = User("morpheus", "leader");
  await postData(user: user);
}
