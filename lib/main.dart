import 'package:flutter/foundation.dart';

Stream<int> demoStream() async* {
  for (int i = 1; i <= 10; i++) {
    if (kDebugMode) {
      print("Marco: " + i.toString());
    }
    await Future.delayed(const Duration(seconds: 5));
    yield i;
  }
}

void main(List<String> args) async {
  Stream<int> stream = demoStream();
  stream.listen((receivedData) {
    if (kDebugMode) {
      print("Polo number: " + receivedData.toString());
    }
  });
}
