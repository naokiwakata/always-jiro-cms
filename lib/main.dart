import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'config/app.dart';
import 'firebase_options.dart';

Future<void> main() async {
  // main 関数でも async が使えます
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.web,
  );
  runApp(const ProviderScope(child: MyApp()));
}
