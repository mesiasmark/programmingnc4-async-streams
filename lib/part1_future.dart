// part1_future.dart

// Function that returns a message after 2 seconds
Future<String> getMessage() {
  return Future.delayed(
    Duration(seconds: 2),
    () => 'Hello! This message was delayed by 2 seconds.',
  );
}

// Async main function
Future<void> main() async {
  print('Waiting for the message...');
  String message = await getMessage(); // Wait for the Future to complete
  print(message);
}
