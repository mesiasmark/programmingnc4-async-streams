// This file demonstrates error handling in Futures

import 'dart:async';

Future<void> simulateError() async {
  await Future.delayed(Duration(seconds: 2));
  throw Exception("Something went wrong in Future!");
}

Future<void> main() async {
  try {
    await simulateError();
  } catch (e) {
    print("Caught an error: $e");
  }
}
