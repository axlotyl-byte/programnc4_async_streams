// File: part1_future.dart
Future<String> getNameLater() {
  return Future.delayed(Duration(seconds: 2), () {
    return 'Magandang Araw Pilipinas!';
  });
}

Future<void> main() async {
  print('Getting your name...');
  String message = await getNameLater();
  print(message);
}
