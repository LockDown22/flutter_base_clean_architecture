import 'package:flutter/material.dart';

import 'application.dart';
import 'dart:async';

Future<void> main() async {
  runZonedGuarded(() {
    runApp(const MyApp());
  }, (error, stack) {});
}
