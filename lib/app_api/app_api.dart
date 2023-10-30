import 'package:flutter_chat_types/flutter_chat_types.dart';

class ApiApi{

}


Future<TextMessage> generateMessage() async {
  const user = User(id: 'authorId');
  const message = TextMessage(author: user, id: 'id', text: 'text');
  // ignore: avoid_print
  print(message.toJson());
  final json = {
    'author': {'id': 'authorId'},
    'id': 'id',
    'text': 'text',
  };

  return Future.value(TextMessage.fromJson(json));
}