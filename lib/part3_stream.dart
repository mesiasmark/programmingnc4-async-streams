// part3_stream.dart
import 'dart:async';

/// A Stream function that emits numbers 1–5 with 1-second delays.
Stream<int> numberStream() async* {
  for (int i = 1; i <= 5; i++) {
    await Future.delayed(Duration(seconds: 1)); // Wait 1 second
    yield i; // Emit the number
  }
}

void main() async {
  print("Listening to number stream...");
  await for (var number in numberStream()) {
    print("Received: $number");
  }
  print("Stream finished.");
}