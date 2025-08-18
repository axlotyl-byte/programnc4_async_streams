// File: part2_future_error.dart
Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 2), () {
    throw Exception('Something went wrong!');
  });
}

void getSafeMessage() async {
  try {
    String message = await fetchData();
    print('Success: $message');
  } catch (error) {
    print('Uy wala ka nang pag-asa sakanya.');
  }
}

void main() {
  getSafeMessage();
  print('Still running even if something goes wrong.');
}
