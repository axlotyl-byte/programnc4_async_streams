// File: part3_stream.dart
Stream<String> messageStream() async* {
  for (int i = 1; i <= 5; i++) {
    if (i == 1) {
      yield 'First message';
    } else if (i == 2) {
      yield 'Second message';
    } else {
      yield 'Third message';
    }
    await Future.delayed(Duration(seconds: 1));
  }
}

void listenToMessages() {
  messageStream().listen((msg) {
    print('New: $msg');
  });
}

void main() {
  listenToMessages();
  print('Listening to messages...');
}
